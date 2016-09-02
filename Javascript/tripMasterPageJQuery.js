window.onload = function () {
    $.fn.formatMoney = function () {
        return this.each(function () {
            $(this).text($(this).text().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,"));
        })
    }

    $('#calendarCanvas').datepick({
        onSelect: function (dates) {
            var pickedDate = dates[0];
            $('#tmainContentPlaceHolder_ripDateHiddenField').val($.datepick.formatDate("yyyy/mm/dd", pickedDate));
        }
    });

    var pid = $("input[id*=placeRadioButtonList]:checked").val();
    placeRadioButton_onclick(pid);
}

function placeRadioButton_onclick(pid) {

    TravelWS.getPlaceData(pid, showPlaceData);
}

function showPlaceData(placeData) {

    $("#mainContentPlaceHolder_placeImage").attr("src", "http://farm9.staticflickr.com/" + placeData.flickrId);
    $("#mainContentPlaceHolder_priceLabel").text(placeData.price);
    $("#mainContentPlaceHolder_priceHiddenField").val(placeData.price);
    $("#mainContentPlaceHolder_youtubeIdHiddenField").val(placeData.youtubeId);
    $("#mainContentPlaceHolder_latitudeHiddenField").val(placeData.latitude);
    $("#mainContentPlaceHolder_longitudeHiddenField").val(placeData.longitude);
    calculateTotal();
}

function calculateTotal() {

    var total = $("#mainContentPlaceHolder_priceLabel").text() * $("#mainContentPlaceHolder_daysTextBox").val();
    $("#mainContentPlaceHolder_totalLabel").text(total).formatMoney();
    $("#mainContentPlaceHolder_totalHiddenField").val(total);
}