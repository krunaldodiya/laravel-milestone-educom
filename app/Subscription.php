<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subscription extends Model
{
    protected $fillable = [
        'category_id', 'user_id', 'expires_at'
    ];

    protected $dates = [
        'created_at', 'updated_at',
    ];
}
