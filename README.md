# cordova-plugin-ios-app-group-path

This plugin has a single function to return the path for specified app group in iOS,
Which is useful when the app has multiple targets and want to share files between targets
using cordova-plugin-file.

## Installation

    cordova plugin add cordova-plugin-ios-app-group-path

## Quick Example

```js
document.addEventListener('deviceready', onDeviceReady, false);
function onDeviceReady() {
    AppGroupPath.getPath(
        'group.com.app',
        (path) => console.log(path),
        (error) => console.log(error)
    );
};
```

### Supported Platforms

- iOS
