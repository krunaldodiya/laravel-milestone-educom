<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    {{-- <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"> --}}
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Milestone Player</title>
</head>

<style>
    video#backgroundvid {
        position: fixed;
        right: 0;
        bottom: 0;
        min-width: 100%;
        min-height: 100%;
        width: auto;
        height: auto;
        z-index: -100;
        background: url(polina.jpg) no-repeat;
        background-size: cover;
    }
</style>

<body>
    <video autoplay controls disablepictureinpicture controlslist="nodownload" id="backgroundvid">
        <source src="{{ $url }}" type="video/mp4">
    </video>
</body>

</html>
