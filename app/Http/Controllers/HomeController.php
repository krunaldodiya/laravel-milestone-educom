<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\School;
use App\User;
use Illuminate\Support\Facades\Mail;
use App\Mail\FeedbackMail;
use Spatie\DbDumper\Databases\MySql;
use Carbon\Carbon;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;

class HomeController extends Controller
{
    public function home()
    {
        return view('home');
    }

    public function about()
    {
        return view('about');
    }

    public function export(Request $request)
    {
        $user = auth()->user();

        if ($user->role->name == "admin") {
            MySql::create()
                ->setDbName(env('DB_DATABASE'))
                ->setUserName(env('DB_USERNAME'))
                ->setPassword(env('DB_PASSWORD'))
                ->includeTables(['users', 'schools', 'categories', 'topics', 'videos'])
                ->dumpToFile('dump.sql');

            $file = public_path() . "/dump.sql";
            $headers = array('Content-Type: application/sql');
            $file_name = Carbon::now()->format('d-m-Y-h:s:i');

            return response()->download($file, "milestone-${file_name}.sql", $headers);
        };

        return abort(403);
    }

    public function feedbackForm(Request $request)
    {
        $user = User::find($request->userId);

        return view('feedback', ['user' => $user]);
    }

    public function sendFeedback(Request $request)
    {
        $user_id = $request->user_id;
        $subject = $request->subject;
        $body = $request->body;

        $user = User::find($user_id);

        Mail::to(env('MAIL_USERNAME'))->send(new FeedbackMail($user, $subject, $body));

        return redirect()->back()->with(['message' => 'Feedback sent successfully.']);
    }

    public function getSchools(Request $request)
    {
        $schools = School::get();

        return ['schools' => $schools];
    }

    public function resetDevice(Request $request)
    {
        User::where('id', $request->id)->update(['imei' => null]);

        return redirect()->back();
    }

    public function getAssets(Request $request)
    {
        $defaultAsset = $request->url ? $request->url : 'assets/default.png';

        $storageExists = Storage::disk('public')->exists($defaultAsset);

        $assetPath = $storageExists ? public_path("storage/$defaultAsset") : public_path("images/default.png");

        return Image::make($assetPath)->response();
    }
}
