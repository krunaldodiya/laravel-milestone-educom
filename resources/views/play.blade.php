@extends('layouts.master')

@section('content')
<div class="row">
    <div style="padding: 10px;">
        {{-- <video controls controlsList="nodownload">
            <source src="https://api.shendre.com/uploadfile/10th_Guj/Basic/Plus-minus-rules.mp4" type="video/mp4">
        </video> --}}

        <video width="320" height="240" controls>
            <source src="https://api.shendre.com/uploadfile/10th_Guj/Basic/Plus-minus-rules.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video>
    </div>
</div>
@endsection