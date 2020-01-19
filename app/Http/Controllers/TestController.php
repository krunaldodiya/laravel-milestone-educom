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
        $token = JWTAuth::getToken();
        $data = JWTAuth::getPayload($token)->toArray();

        $institute = Institute::with('students.info.subscriptions')->first();

        return $institute;
    }
}
