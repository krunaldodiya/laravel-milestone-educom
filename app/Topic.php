<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Topic extends Model
{
    protected $fillable = [
        'name', 'description', 'category_id', 'chapter_id', 'image', 'order'
    ];

    protected $dates = [
        'created_at', 'updated_at',
    ];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function chapter()
    {
        return $this->belongsTo(Chapter::class);
    }

    public function videos()
    {
        return $this->hasMany(Video::class)->orderBy('order');
    }
}
