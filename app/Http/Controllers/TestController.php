<?php

namespace App\Http\Controllers;

use App\Exceptions\MaxStudentLimit;
use App\Exceptions\StudentAlreadyAdded;
use App\Institute;
use App\InstituteStudent;
use App\User;
use Illuminate\Http\Request;

class TestController extends Controller
{
    public function test(Request $request)
    {
        $mobile = $request->mobile;

        $reseller = ['institute_id' => '1'];
        // $reseller = JWTAuth::getPayload(JWTAuth::getToken())->toArray();

        $institute = Institute::with('students')->find($reseller['institute_id']);

        if ($institute->max_students > $institute->students->count()) {
            $user = User::firstOrCreate(['mobile' => $mobile], [
                'mobile' => $mobile,
                'password' => bcrypt(str_random(8))
            ]);

            $exists = InstituteStudent::where(['student_id' => $user->id])->first();

            if (!$exists) {
                InstituteStudent::firstOrCreate([
                    'institute_id' => $reseller['institute_id'],
                    'student_id' => $user->id
                ]);

                return Institute::with('students.info.subscriptions', 'categories.info')->find($reseller['institute_id']);
            }

            throw new StudentAlreadyAdded("Students already added to another Institute");
        }

        throw new MaxStudentLimit("Max {$institute->max_students} students are allowed");
    }
}
