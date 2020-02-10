<?php

namespace App\Http\Controllers;

use App\Exceptions\MaxStudentLimit;
use App\Http\Requests\AddStudentRequest;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\RemoveStudentRequest;
use App\Http\Requests\ToggleSubscriptionRequest;
use App\Institute;
use App\InstituteStudent;
use App\Subscription;
use App\User;
use Error;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Facades\JWTFactory;

class ResellerController extends Controller
{
    public function login(LoginRequest $request)
    {
        $username = $request->username;
        $password = $request->password;

        $institute = DB::table('institutes')->where('username', $username)->first();

        $validate_admin = Hash::check($password, $institute->password);

        if (!$validate_admin) {
            throw new Error("Wrong username or password");
        }

        $customClaims = JWTFactory::customClaims([
            'sub' => env('APP_ENV'),
            'institute_id' => $institute->id
        ]);

        $payload = JWTFactory::make($customClaims);

        $token = JWTAuth::encode($payload);

        return ['token' => $token->get()];
    }

    public function removeStudent(RemoveStudentRequest $request)
    {
        User::find($request->student_id)->delete();

        return $this->getInstitute($request);
    }

    public function addStudent(AddStudentRequest $request)
    {
        $mobile = $request->mobile;

        try {
            $reseller = JWTAuth::getPayload(JWTAuth::getToken())->toArray();

            $institute = Institute::with('students')->find($reseller['institute_id']);

            if ($institute->max_students > $institute->students->count()) {
                $user = User::firstOrCreate(['mobile' => $mobile], [
                    'mobile' => $mobile,
                    'password' => bcrypt(str_random(8))
                ]);

                $exists = InstituteStudent::where(['student_id' => $user->id])->first();

                if (!$exists) {
                    Subscription::where(['user_id' => $user->id])->delete();

                    InstituteStudent::firstOrCreate([
                        'institute_id' => $reseller['institute_id'],
                        'student_id' => $user->id
                    ]);

                    return $this->getInstitute($request);
                }

                return response()->json(['message' => "Students already added to another Institute"], 422);
            }

            return response()->json(['message' => "Max {$institute->max_students} students are allowed"], 422);
        } catch (\Throwable $th) {
            return response()->json(['message' => "Invalid Institute"], 422);
        }
    }

    public function getInstitute(Request $request)
    {
        $reseller = JWTAuth::getPayload(JWTAuth::getToken())->toArray();
        $institute = Institute::with('students.info.subscriptions', 'categories.info')->find($reseller['institute_id']);

        return compact('institute');
    }

    public function toggleSubscription(ToggleSubscriptionRequest $request)
    {
        $reseller = JWTAuth::getPayload(JWTAuth::getToken())->toArray();

        $data = [
            'institute_id' => $reseller['institute_id'],
            'user_id' => $request['user_id'],
            'category_id' => $request['category_id'],
        ];

        $subscription = Subscription::where($data);

        if ($subscription->count()) {
            $subscription->delete();
        } else {
            $data['expires_at'] = $request['expires_at'];
            Subscription::create($data);
        }

        return $this->getInstitute($request);
    }
}
