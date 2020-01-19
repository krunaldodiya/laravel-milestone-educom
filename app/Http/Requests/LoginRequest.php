<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\JsonResponse;

class LoginRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'username' => ['required', 'exists:institutes'],
            'password' => ['required'],
        ];
    }

    public function response(array $errors)
    {
        return new JsonResponse($errors, 422);
    }
}
