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

    public function getUrlAttribute($url)
    {
        return "https://api.milestoneducation.com/$url";
    }

    public function topic()
    {
        return $this->belongsTo(Topic::class);
    }
}
