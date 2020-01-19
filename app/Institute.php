<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Institute extends Model
{
    protected $guarded = [];

    protected $dates = [
        'created_at', 'updated_at',
    ];

    public function students()
    {
        return $this->hasMany(InstituteStudent::class);
    }

    public function categories()
    {
        return $this->hasMany(InstituteCategory::class);
    }
}
