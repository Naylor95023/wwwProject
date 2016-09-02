window.onload = function () {
    
    mailServerRadioButtonList_onclick();

}

function mailServerRadioButtonList_onclick() {

    switch ($("input[name=mailServerRadioButtonList]:checked").val()) {
        case "Google":
            $("#senderAddressLabel").text("a8861673@gmail.com");
            $("#senderHiddenField").val("a8861673@gmail.com");
            break;

        case "Yahoo":
            $("#senderAddressLabel").text("love95023@yahoo.com");
            $("#senderHiddenField").val("love95023@yahoo.com");
            break;
    }
}