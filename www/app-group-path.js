function AppGroupPath() { };

AppGroupPath.prototype.getPath = function (appGroup, success, error) {
    if (cordova.platformId !== 'ios') {
        console.log('This plugin only works on iOS');
        return;
    }

    cordova.exec(success, error, 'AppGroupPath', 'getPath', [appGroup]);
}

module.exports = new AppGroupPath();