<?php

namespace App\Http\Controllers;

use App\Http\Requests\LoginRequest;
use App\Institute;
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

    public function addStudent(Request $request)
    {
        $mobile = $request->mobile;

        $user = User::firstOrCreate(['mobile' => $mobile], [
            'mobile' => $mobile,
            'password' => bcrypt(str_random(8))
        ]);
    }

    public function getInstitute(Request $request)
    {
        $institute = Institute::with('students.info.subscriptions')
            ->where('institute_id', $request->institute_id)
            ->first();

        return compact('institute');
    }
}
