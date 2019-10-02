<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>Milestone Player</title>
</head>

<style>
    video#bgvideo {
        position: absolute;
        top: 0px;
        right: 0px;
        bottom: 0px;
        left: 0px;
        max-height: 100%;
        max-width: 100%;
        margin: auto;
    }
</style>

<body style="background-color: black">
    <video disablepictureinpicture controls autoplay controlslist="nodownload" name="media" id="bgvideo">
        <source src="{{ $url }}" type="video/mp4">
    </video>
</body>

</html>
