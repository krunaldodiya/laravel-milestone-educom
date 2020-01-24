<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Video;

class VideoController extends Controller
{
    public function getVideos(Request $request)
    {
        $videos = Video::where('topic_id', $request->topic_id)->get();

        return compact('videos');
    }

    public function play(Request $request)
    {
        $headers = $request->get('headers');

        $url = $request->get('url');

        if ($headers && $headers['download'] == 'none') {
            return view('play')->with('url', $url);
        }

        return view('play')->with('url', "https://api.shendre.com/uploadfile/10th_Guj/Planexpirevideo.mp4");
    }
}
