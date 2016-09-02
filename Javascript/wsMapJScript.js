var map;
var centerLatLng;

window.onload = function () {

    var mapOptions = {
        zoom: 15,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        panControl: false,
        mapTypeControl: false
    };

    map = new google.maps.Map($("#mapCanvas")[0], mapOptions);

    var pid = $("input[name=placeRadioButtonList]:checked").val();
    placeRadioButtonList_onclick(pid);
}

function placeRadioButtonList_onclick(pid) {
    TravelWS.getPlaceData(pid, showGoogleMap);
}

function showGoogleMap(placeData) {

    centerLatLng = new google.maps.LatLng(placeData.latitude, placeData.longitude);
    map.setCenter(centerLatLng);

}