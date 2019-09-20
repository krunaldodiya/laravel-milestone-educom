<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>Milestone Player</title>
</head>

<style>
    video::-internal-media-controls-download-button {
        display: none;
    }

    video::-webkit-media-controls-enclosure {
        overflow: hidden;
    }

    video::-webkit-media-controls-panel {
        width: calc(100% + 30px);
        /* Adjust as needed */
    }

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

<body style="background-color: black">
    <video autoplay disablepictureinpicture controls controlslist="nodownload" id="backgroundvid">
        <source src="{{ $url }}" type="video/mp4">
    </video>
</body>

</html>
