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

    protected $appends = ['video_url'];

    public function getVideoUrlAttribute($url)
    {
        $setting = setting('site.video_url');

        return "$setting/$url";
    }

    public function topic()
    {
        return $this->belongsTo(Topic::class);
    }
}
