<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class InstituteCategory extends Model
{
    protected $guarded = [];

    protected $dates = [
        'created_at', 'updated_at', 'expires_at',
    ];
}
