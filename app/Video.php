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

    protected $appends = ['link'];

    public function getLinkAttribute()
    {
        $setting = setting('site.video_url');
        $url = $this->url;

        return "$setting/$url";
    }

    public function topic()
    {
        return $this->belongsTo(Topic::class);
    }
}
