<?php

namespace App\Repositories;

use App\Repositories\Contracts\UserRepositoryInterface;
use App\User;

class UserRepository implements UserRepositoryInterface
{
    public function getUserById($user_id)
    {
        return User::with('school')
            ->where(['id' => $user_id])
            ->first();
    }

    protected function register($imei, $mobile)
    {
        $authUser = User::create([
            'mobile' => $mobile,
            'password' => bcrypt(str_random(8))
        ]);

        $user = $this->getUserById($authUser->id);

        return $this->login($imei, $user);
    }

    protected function login($imei, $user)
    {
        if ($user->imei == null) {
            $user->update(['imei' => $imei]);
        }

        $token = auth('api')->tokenById($user->id);

        return $this->generateToken($token, $user);
    }

    public function basicAuth($request)
    {
        $email = $request->email;
        $password = $request->password;
        $imei = $request->imei;

        $user = User::firstOrCreate(['email' => $email], [
            'email' => $email,
            'password' => $password
        ]);

        return $this->login($imei, $user);
    }

    public function otpAuth($request)
    {
        $mobile = $request->mobile;
        $imei = $request->imei;

        $user = User::where(['mobile' => $mobile])->first();

        if ($user) {
            return $this->login($imei, $user);
        }

        return $this->register($imei, $mobile);
    }

    public function refreshToken()
    {
        return $this->generateToken(auth('api')->refresh(), auth('api')->user());
    }

    public function generateToken($token, $user)
    {
        $authUser = $this->getUserById($user->id);

        return [
            'access_token' => $token,
            'user' => $authUser
        ];
    }
}
