﻿var player;
var videoURL;

function onYouTubeIframeAPIReady() {

    var youtubeId = document.getElementById("youtubeIdHiddenField").value;

    player = new YT.Player('player', {
        height: '200',
        width: '200',
        videoId: youtubeId,
        events: {
            'onReady': onPlayerReady,
            'onStateChange': onPlayerStateChange
        }
    });
}

function onPlayerReady(event) {
    player.playVideo();
}

function onPlayerStateChange(event) {
    if (event.data == YT.PlayerState.ENDED) {
        player.playVideo();
        player.pauseVideo();
    }
}
