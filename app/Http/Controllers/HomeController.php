<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
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

    public function exportUsers(Request $request)
    {
        $user = auth()->user();

        if ($user->role->name == "admin") {
            $users = User::all();

            $file_name = "users.csv";

            $handle = fopen($file_name, 'w+');

            fputcsv($handle, [
                'id', 'name', 'email', 'mobile', 'dob', 'gender', 'school', 'education', 'status', 'account_status', 'created at'
            ]);

            foreach ($users as $user) {
                fputcsv($handle, [
                    $user['id'], $user['name'], $user['email'], $user['mobile'], $user['dob'], $user['gender'],
                    $user['school'], $user['education'], $user['status'], $user['account_status'], $user['created_at']
                ]);
            }

            fclose($handle);

            $headers = array('Content-Type' => 'text/csv');

            return response()->download($file_name, "milestone-${file_name}.csv", $headers);
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
