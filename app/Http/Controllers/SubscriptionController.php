<?php

namespace App\Http\Controllers;

use App\Institute;
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
        $expires_at = $request->institute_id ? Institute::find($request->institute_id) : Carbon::now()->addDays($user->site_settings->expiry);

        Subscription::create([
            'institute_id' => $request->institute_id,
            'category_id' => $category_id,
            'user_id' => $user->id,
            'expires_at' => $expires_at
        ]);

        return response(['user' => $this->userRepo->getUserById($user->id)], 200);
    }
}
