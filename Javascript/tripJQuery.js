window.onload = function () {
    $.fn.formatMoney = function () {
        return this.each(function () {
            $(this).text($(this).text().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,"));
        })
    }

    $('#calendarCanvas').datepick({
        onSelect: function (dates) {
            var pickedDate = dates[0];
            $('#tripDateHiddenField').val($.datepick.formatDate("yyyy/mm/dd", pickedDate));
        }
    });

    var pid = $("input[name=placeRadioButtonList]:checked").val();
    placeRadioButton_onclick(pid);
}

function placeRadioButton_onclick(pid) {

    TravelWS.getPlaceData(pid, showPlaceData);
}

function showPlaceData(placeData) {

    $("#placeImage").attr("src", "http://farm9.staticflickr.com/" + placeData.flickrId);
    $("#priceLabel").text(placeData.price);
    $("#priceHiddenField").val(placeData.price);
    $("#youtubeIdHiddenField").val(placeData.youtubeId);
    $("#latitudeHiddenField").val(placeData.latitude);
    $("#longitudeHiddenField").val(placeData.longitude);
    calculateTotal();
}

function calculateTotal() {

    var total = $("#priceLabel").text() * $("#daysTextBox").val();
    $("#totalLabel").text(total).formatMoney();
    $("#totalHiddenField").val(total);
}