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

    protected $appends = ['status'];

    public function getStatusAttribute()
    {
        return $this->expires_at > Carbon::now() ? "Expired" : "Active";
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
