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
use App\Subscription;
use App\Http\Requests\Feedback;

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

    private function getExportableUsers($type)
    {
        if ($type == 1) { // No subscription
            $subscriptions = Subscription::pluck('user_id');
            return User::whereNotIn('id', $subscriptions)->get();
        }

        if ($type == 2) { // Active subscription
            $subscriptions =  Subscription::where('expires_at', '>', Carbon::now())
                ->pluck('user_id');
            return User::whereIn('id', $subscriptions)->get();
        }

        if ($type == 3) { // Expired subscription
            $subscriptions =  Subscription::where('expires_at', '<=', Carbon::now())
                ->pluck('user_id');
            return User::whereIn('id', $subscriptions)->get();
        }
    }

    public function exportUsers(Request $request)
    {
        $user = auth()->user();
        $type = $request->type;

        $users = $this->getExportableUsers($type);

        if ($user->role->name == "admin") {
            $user_type = "";

            if ($type == 1) {
                $user_type = "no-subscription";
            } else if ($type == 2) {
                $user_type = "active-subscription";
            } else if ($type == 3) {
                $user_type = "expired-subscription";
            }

            $file_name = "$user_type-users.csv";

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

            return response()->download($file_name, $file_name, $headers);
        };

        return abort(403);
    }

    public function feedbackForm(Request $request)
    {
        $user = User::find($request->userId);

        return view('feedback', ['user' => $user]);
    }

    public function test(Feedback $request)
    {
        return 'test';
    }

    public function sendFeedback(Feedback $request)
    {
        $user_id = $request->user_id;
        $user = User::find($user_id);

        $subject = "Feedback from {$user->name}";
        $feedback = $request->feedback;

        Mail::to(env('MAIL_USERNAME'))->send(new FeedbackMail($user, $subject, $feedback));
        return response(['message' => 'Feedback sent successfully.'], 200);
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
