<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>Milestone Player</title>
</head>

<style>
    body {
        margin: 0px;
    }

    video::-internal-media-controls-download-button {
        display: none;
    }

    video::-webkit-media-controls-enclosure {
        overflow: hidden;
    }

    video::-webkit-media-controls-panel {
        width: calc(100%);
    }

    video#bgvideo {
        position: fixed;
        left: 0;
        right: 0;
        top: 0;
        bottom: 0;
        min-width: 100%;
        min-height: 100%;
        width: 100%;
        height: 100%;
    }
</style>

<body style="background-color: black">
    {{-- <video disablepictureinpicture controls controlslist="nodownload" id="bgvideo">
        <source src="{{ $url }}" type="video/mp4">
    </video> --}}

    <video controls="" autoplay="" name="media">
        <source src="https://api.shendre.com/uploadfile/10th_Guj/intro/intro-compressed.mp4" type="video/mp4">
    </video>
</body>

</html>
