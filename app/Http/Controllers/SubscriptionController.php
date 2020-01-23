<?php

namespace App\Http\Controllers;

use App\Institute;
use App\InstituteCategory;
use Illuminate\Http\Request;
use App\Subscription;
use Carbon\Carbon;
use App\Repositories\UserRepository;

class SubscriptionController extends Controller
{
    public $userRepo;

    public function __construct(UserRepository $userRepo)
    {
        $this->userRepo = $userRepo;
    }

    protected function createSubscription(Request $request)
    {
        $user = auth('api')->user();
        $category_id = $request->category_id;
        $institute_id = $request->institute_id ? $request->institute_id : 1;

        $institute_category = InstituteCategory::where(['institute_id' => $institute_id, 'category_id' => $request->category_id])->first();
        $expires_at = $institute_category ? $institute_category->expires_at : Carbon::now()->addDays($user->site_settings['trial_days']);

        Subscription::create([
            'institute_id' => $institute_id,
            'category_id' => $category_id,
            'user_id' => $user->id,
            'expires_at' => $expires_at
        ]);

        return response(['user' => $this->userRepo->getUserById($user->id)], 200);
    }
}
