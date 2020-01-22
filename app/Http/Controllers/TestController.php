<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class TestController extends Controller
{
    public function test(Request $request)
    {
        return User::with('subscriptions', 'institutes')
            ->where(['id' => auth()->id()])
            ->first();
    }
}
