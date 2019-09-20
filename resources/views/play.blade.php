<div class="fullscreen-bg">
    <video controls autoplay disablePictureInPicture controlsList="nodownload" class="fullscreen-bg__video">
        <source src="{{ $url }}" type="video/mp4">
    </video>
</div>


<style>
    .fullscreen-bg {
        position: fixed;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        overflow: hidden;
        z-index: -100;
    }

    .fullscreen-bg__video {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }
</style>
