<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class Feedback extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'feedback' => 'required',
            'user_id' => 'required'
        ];
    }

    public function response(array $errors)
    {
        return new JsonResponse($errors, 422);
    }
}
