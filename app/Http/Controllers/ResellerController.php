<?php

namespace App\Http\Controllers;

use App\User;
use Error;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Facades\JWTFactory;

class ResellerController extends Controller
{
    public function login(Request $request)
    {
        $username = $request->username;
        $password = $request->password;

        $institute = DB::table('institutes')->where('username', $username)->first();

        if ($institute) {
            $validate_admin = Hash::check($password, $institute->password);

            if (!$validate_admin) {
                throw new Error("Wrong username or password");
            }

            $payload = JWTFactory::make($institute);

            return JWTAuth::encode($payload);
        }

        throw new Error("No Institute found");
    }

    public function addStudent(Request $request)
    {
        $mobile = $request->mobile;

        $user = User::firstOrCreate(['mobile' => $mobile], [
            'mobile' => $mobile,
            'password' => bcrypt(str_random(8))
        ]);
    }
}
