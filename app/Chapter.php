<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Chapter extends Model
{
    protected $fillable = [
        'name', 'description', 'category_id', 'image', 'order'
    ];

    protected $dates = [
        'created_at', 'updated_at',
    ];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function topics()
    {
        return $this->hasMany(Topic::class)->orderBy('order');
    }
}
