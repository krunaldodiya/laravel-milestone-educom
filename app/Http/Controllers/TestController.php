<?php

namespace App\Http\Controllers;

use App\Http\Requests\AddStudentRequest;
use App\Institute;
use App\InstituteStudent;
use App\User;
use Illuminate\Support\Facades\DB;
use Tymon\JWTAuth\Facades\JWTAuth;

class TestController extends Controller
{
    public function test(AddStudentRequest $request)
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

        $institute = Institute::with('students.info.subscriptions')->find($reseller['institute_id']);

        return compact('institute');
    }
}
