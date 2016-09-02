﻿var player;

function onYouTubeIframeAPIReady() {
    var youtubeId = $("#youtubeIdHiddenField").val();

    player = new YT.Player('youtubeCanvas', { height: '200', 
                                       width: '200',
                                       videoId: youtubeId,
                                       event: {
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