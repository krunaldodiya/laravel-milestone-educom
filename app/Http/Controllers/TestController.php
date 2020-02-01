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
        dd(env('APP_ENV'));
    }
}
