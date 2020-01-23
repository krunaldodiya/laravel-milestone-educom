<?php

namespace App\Http\Controllers;

use App\Institute;
use App\InstituteCategory;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;

class TestController extends Controller
{
    public function test(Request $request)
    {
        $user = User::first();

        $institute_category = $request->institute_id ?
            InstituteCategory::where(['institute_id' => $request->institute_id, 'category_id' => $request->category_id])->first() :
            null;

        $expires_at = $institute_category ? $institute_category->expires_at : Carbon::now()->addDays($user->site_settings['trial_days']);
    }
}
