function FacebookInit() {
    FB.init({
        appId: '346643395457819',
        status: true,
        cookie: true
    });
}

function FacebookLogin() {
    FacebookInit();
    FB.login(function (loginResponse) {
        if (loginResponse.authResponse) {
            FB.api('/me', function (apiResponse) {
                var fbID = apiResponse.id;
                var fbName = apiResponse.name;
                var fbEmail = apiResponse.email;
                location.href = 'homePage.aspx?fbID=' + fbID + '&fbName=' + fbName + '&fbEmail=' + fbEmail;
            });
        }
    }, { scope: 'email' });
}

function FacebookLogout() {
    FacebookInit();
    FB.getLoginStatus(function (statusResponse) {
        if (statusResponse.status === 'connected') {
            var accessToken = statusResponse.authResponse.accessToken;
            FB.logout(accessToken);
        }
    });
}