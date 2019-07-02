<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateUser extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'id' => "required",
            'name' => "required|min:3",
            'email' => "required|email|unique:users|sometimes",
            'dob' => "required",
            'gender' => "required",
            'school' => "required",
            'education' => "required",
        ];
    }

    public function response(array $errors)
    {
        return new JsonResponse($errors, 422);
    }
}
