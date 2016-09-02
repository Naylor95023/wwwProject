window.onload = function () {
    var pid = $("input[name=placeRadioButtonList]:checked").val();
    placeRadioButtonList_onclick(pid);
}

function placeRadioButtonList_onclick(pid) {
    TravelWS.getPlaceData(pid, showPlaceData);
}

function showPlaceData(placeData) {
    $("#placeImage").attr("src","http://farm9.staticflickr.com/" + placeData.flickrId);
    $("#latitudeLabel").text(placeData.latitude);
    $("#longitudeLabel").text(placeData.longitude);
}