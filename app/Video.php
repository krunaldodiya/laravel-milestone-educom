<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Video extends Model
{
    protected $fillable = [
        'title', 'description', 'topic_id', 'thumbnail', 'url', 'order'
    ];

    protected $dates = [
        'created_at', 'updated_at',
    ];

    public function topic()
    {
        return $this->belongsTo(Topic::class);
    }

    public function chapter()
    {
        return $this->belongsTo(Chapter::class);
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
