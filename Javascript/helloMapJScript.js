window.onload = function () {
    var centerLatLng = new google.maps.LatLng(25.0419, 121.5353);
    var mapOptions = {

        center: centerLatLng,
        zoom: 15,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        panControl: true
    };
    var map = new google.maps.Map($("#mapCanvas")[0], mapOptions);
}