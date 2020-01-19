<?php

namespace App\Http\Controllers;

use App\Institute;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;

class TestController extends Controller
{
    public function test(Request $request)
    {
        $reseller = JWTAuth::getPayload(JWTAuth::getToken())->toArray();

        $institute = Institute::with('students')->find($reseller['institute_id']);

        return $institute;
    }
}
