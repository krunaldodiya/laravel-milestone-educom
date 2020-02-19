<?php

namespace App;

use App\Events\InstituteWasUpdated;
use Illuminate\Database\Eloquent\Model;

class Institute extends Model
{
    protected $guarded = [];

    protected $dates = [
        'created_at', 'updated_at',
    ];

    protected $dispatchesEvents = [
        'updated' => InstituteWasUpdated::class
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
