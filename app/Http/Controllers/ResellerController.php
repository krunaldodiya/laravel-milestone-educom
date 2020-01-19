<?php

namespace App\Http\Controllers;

use App\Http\Requests\AddStudentRequest;
use App\Http\Requests\LoginRequest;
use App\Institute;
use App\InstituteStudent;
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

    public function addStudent(AddStudentRequest $request)
    {
        $reseller = JWTAuth::getPayload(JWTAuth::getToken())->toArray();

        $mobile = $request->mobile;

        $user = User::firstOrCreate(['mobile' => $mobile], [
            'mobile' => $mobile,
            'password' => bcrypt(str_random(8))
        ]);

        InstituteStudent::firstOrCreate([
            'institute_id' => $reseller['institute_id'],
            'student_id' => $user->id
        ]);

        return $this->getInstitute($request);
    }

    public function getInstitute(Request $request)
    {
        $reseller = JWTAuth::getPayload(JWTAuth::getToken())->toArray();
        $institute = Institute::with('students.info.subscriptions')->find($reseller['institute_id']);

        return compact('institute');
    }
}
