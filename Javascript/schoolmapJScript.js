var map;
var geocoder;
var marker;
var latLabel;
var lngLabel;

window.onload = function () {
    latLabel = $("#latLabel");
    lngLabel = $("#lngLabel");
    latLabel.text("25.0419");
    lngLabel.text("121.5353");

    var centerLatLng = new google.maps.LatLng(latLabel.text(), lngLabel.text());

    var mapOptions = {
        zoom: 15,
        center: centerLatLng,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        panControl: false,
        mapTypeControl: false,
        streetViewControl: false
    };

    map = new google.maps.Map($("#mapCanvas")[0], mapOptions);

    geocoder = new google.maps.Geocoder();
}

function codeAddress() {

    var address = $("#addressTextBox").val();

    var request = { 'address': address };

    if (address != "") {
        if (address.match(/^[a-zA-Z]+$/)) {
            alert("請輸入中文地名!");
        } else {
            geocoder.geocode(request, showMarker);
        }
    }
}

function showMarker(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {

        var location = results[0].geometry.location;

        map.setCenter(location);

        latLabel.text(location.lat());
        lngLabel.text(location.lng());

        var markerOptions = {
            position: location,
            map: map,
            draggable: true
        };

        marker = new google.maps.Marker(markerOptions);
        google.maps.event.addListener(marker, 'dragstart', clearLocation);
        google.maps.event.addListener(marker, 'dragend', showLocation);
    } else {
        alert("無效地址!");
    }
}

function clearLocation(event) {
    latLabel.text("");
    lngLabel.text("");
}

function showLocation(event) {
    latLabel.text(event.latLng.lat());
    lngLabel.text(event.latLng.lng());
}