<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Subscription extends Model
{
    protected $fillable = [
        'category_id', 'user_id', 'expires_at', 'institute_id'
    ];

    protected $dates = [
        'created_at', 'updated_at',
    ];

    protected $appends = ['status'];

    public function getStatusAttribute()
    {
        return $this->expires_at > Carbon::now() ? "Active" : "Expired";
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
