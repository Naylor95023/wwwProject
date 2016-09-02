var map;
var geocoder;
var marker;
var latTextBox;
var lngTextBox;
var address;

window.onload = function () {
    
    var centerLatLng = new google.maps.LatLng(25.0419, 121.5353);

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

    address = $("#mainContentPlaceHolder_addressTextBox").val();

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

        latTextBox = $("#mainContentPlaceHolder_placeDetailsView tr:eq(4) td:eq(1)").find("input");
        lngTextBox = $("#mainContentPlaceHolder_placeDetailsView tr:eq(5) td:eq(1)").find("input");

        $("#mainContentPlaceHolder_placeDetailsView tr:eq(0) td:eq(1)").find("input").val(address);
        latTextBox.val(results[0].geometry.location.lat());
        lngTextBox.val(results[0].geometry.location.lng());


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
    latTextBox.val("");
    lngTextBox.val("");
}
function showLocation(event) {
    latTextBox.val(event.latLng.lat());
    lngTextBox.val(event.latLng.lng());
}