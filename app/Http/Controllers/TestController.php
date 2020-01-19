<?php

namespace App\Http\Controllers;

use App\Subscription;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;

class TestController extends Controller
{
    public function test(Request $request)
    {
        $reseller = JWTAuth::getPayload(JWTAuth::getToken())->toArray();

        $data = [
            'institute_id' => $reseller['institute_id'],
            'user_id' => $request['user_id'],
            'category_id' => $request['category_id'],
        ];

        $subscription = Subscription::where($data);

        if ($subscription->count()) {
            $subscription->delete();
        } else {
            $data['expires_at'] = $request['expires_at'];
            Subscription::create($data);
        }

        return 'done';
    }
}
