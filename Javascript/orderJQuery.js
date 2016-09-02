var streetView;
var streetViewService;
var centerLatLng;
var panoramaOptions;
var map;
var latitude;
var longitude;

window.onload = function () {

     latitude = $("#latHiddenField").val();
     longitude = $("#lngHiddenField").val();

    centerLatLng = new google.maps.LatLng(latitude, longitude);

    var mapOptions = {
        zoom: 15,
        center:centerLatLng,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        panControl: false,
        mapTypeControl: false,
        zoomControl: false,
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

    google.maps.event.addListener(map, 'dblclick', updataStreetView);
    streetViewService = new google.maps.StreetViewService();

}

function updataStreetView(event) {
   
    streetViewService.getPanoramaByLocation(event.latLng, 100, showStreetView);
}

function showStreetView(data, status) {
    if (status == google.maps.StreetViewStatus.OK) {
        streetView.setPano(data.location.pano);
        streetView.setPov(panoramaOptions.pov);
    } else { 
        alert('抱歉!此處無街景服務')
    }
}