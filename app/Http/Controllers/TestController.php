<?php

namespace App\Http\Controllers;

use App\Institute;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Facades\JWTFactory;

class TestController extends Controller
{
    public function test(Request $request)
    {
        $institute = Institute::first();
        $customClaims = JWTFactory::customClaims([
            'sub' => env('APP_ENV'),
            'institute_id' => $institute->id
        ]);

        $customClaims = JWTFactory::customClaims([
            'sub' => env('APP_ENV'),
            'institute_id' => $institute->id
        ]);

        $payload = JWTFactory::make($customClaims);

        $token = JWTAuth::encode($payload);

        return ['token' => $token->get()];
    }
}
