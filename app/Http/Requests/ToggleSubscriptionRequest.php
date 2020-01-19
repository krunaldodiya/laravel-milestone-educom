<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\JsonResponse;

class ToggleSubscriptionRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'user_id' => ['required'],
            'category_id' => ['required'],
            'expires_at' => ['required'],
        ];
    }

    public function response(array $errors)
    {
        return new JsonResponse($errors, 422);
    }
}
