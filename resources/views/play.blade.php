<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

    <title>Milestone Player</title>

    <style>
        .fullscreen-bg {
            width: 100%;
            height: 100%
        }
    </style>
</head>

<body>
    <video controls autoplay disablePictureInPicture controlsList="nodownload" class="fullscreen-bg">
        <source src="{{ $url }}" type="video/mp4">
    </video>
</body>

</html>
