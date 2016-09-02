var map;
var centerLatLng;
var streetView;
var streetViewService;
var panoramaOptions;

window.onload = function () {
    var mapOptions = {
        zoom: 15,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        panControl: false,
        zoomControl: false,
        mapTypeControl: false,
        streetViewControl: false,
        disableDoubleClickZoom: true
    };
    panoramaOptions = {
        position: centerLatLng,
        pov: {
            heading: 0,
            pitch: 0,
            zoom: 1
        },
        panControl: false,
        zoomControl: false,
        addressControl: false
    };

    map = new google.maps.Map($("#mapCanvas")[0], mapOptions);
    streetView = new google.maps.StreetViewPanorama($("#streetViewCanvas")[0], panoramaOptions);
    streetViewService = new google.maps.StreetViewService();
    google.maps.event.addListener(map, 'dblclick', updateStreetView);

    var pid = $("input[name=placeRadioButtonList]:checked").val();
    placeRadioButtonList_onclick(pid);
}

function placeRadioButtonList_onclick(pid) {
    TravelWS.getPlaceData(pid, showGoogleMap);
}

function showGoogleMap(placeData) {
    $("#placeImage").attr("src", "http://farm9.staticflickr.com/" + placeData.flickrId);
    centerLatLng = new google.maps.LatLng(placeData.latitude, placeData.longitude);
    map.setCenter(centerLatLng);

    streetViewService.getPanoramaByLocation(centerLatLng, 100, showStreetView);
}

function updateStreetView(event) {
    streetViewService.getPanoramaByLocation(event.latLng, 100, showStreetView);
}

function showStreetView(data, status) {
    if (status == google.maps.StreetViewStatus.OK) {
        streetView.setPano(data.location.pano);
        streetView.setPov(panoramaOptions.pov);
    }
    else {
        alert('抱歉！此處無街景服務');
    }
}