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
        $reseller = JWTAuth::getPayload(JWTAuth::getToken())->toArray();

        dd($reseller['institute_id']);

        $institute = Institute::with('students.info.subscriptions')->first();

        return $institute;
    }
}
