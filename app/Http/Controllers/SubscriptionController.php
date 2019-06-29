<?php

namespace App\Http\Controllers;

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

        Subscription::create([
            'category_id' => $category_id,
            'user_id' => $user->id,
            'expires_at' => Carbon::now()->addDays(2)
        ]);

        return response(['user' => $this->userRepo->getUserById($user->id)], 200);
    }
}
