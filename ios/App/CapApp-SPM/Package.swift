// swift-tools-version: 5.9
import PackageDescription

// DO NOT MODIFY THIS FILE - managed by Capacitor CLI commands
let package = Package(
    name: "CapApp-SPM",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "CapApp-SPM",
            targets: ["CapApp-SPM"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", exact: "8.3.0"),
        .package(name: "MoodlehqCordovaPluginAdvancedHttp", path: "../../capacitor-cordova-ios-plugins/sources/MoodlehqCordovaPluginAdvancedHttp"),
        .package(name: "MoodlehqCordovaPluginCamera", path: "../../capacitor-cordova-ios-plugins/sources/MoodlehqCordovaPluginCamera"),
        .package(name: "MoodlehqCordovaPluginFileOpener", path: "../../capacitor-cordova-ios-plugins/sources/MoodlehqCordovaPluginFileOpener"),
        .package(name: "MoodlehqCordovaPluginFileTransfer", path: "../../capacitor-cordova-ios-plugins/sources/MoodlehqCordovaPluginFileTransfer"),
        .package(name: "MoodlehqCordovaPluginInappbrowser", path: "../../capacitor-cordova-ios-plugins/sources/MoodlehqCordovaPluginInappbrowser"),
        .package(name: "MoodlehqCordovaPluginIonicKeyboard", path: "../../capacitor-cordova-ios-plugins/sources/MoodlehqCordovaPluginIonicKeyboard"),
        .package(name: "MoodlehqCordovaPluginIonicWebview", path: "../../capacitor-cordova-ios-plugins/sources/MoodlehqCordovaPluginIonicWebview"),
        .package(name: "MoodlehqCordovaPluginMediaCapture", path: "../../capacitor-cordova-ios-plugins/sources/MoodlehqCordovaPluginMediaCapture"),
        .package(name: "MoodlehqCordovaPluginQrscanner", path: "../../capacitor-cordova-ios-plugins/sources/MoodlehqCordovaPluginQrscanner"),
        .package(name: "MoodlehqCordovaPluginStatusbar", path: "../../capacitor-cordova-ios-plugins/sources/MoodlehqCordovaPluginStatusbar"),
        .package(name: "MoodlehqCordovaPluginZip", path: "../../capacitor-cordova-ios-plugins/sources/MoodlehqCordovaPluginZip"),
        .package(name: "MoodlehqPhonegapPluginPush", path: "../../capacitor-cordova-ios-plugins/sources/MoodlehqPhonegapPluginPush"),
        .package(name: "CordovaClipboard", path: "../../capacitor-cordova-ios-plugins/sources/CordovaClipboard"),
        .package(name: "CordovaPluginBadge", path: "../../capacitor-cordova-ios-plugins/sources/CordovaPluginBadge"),
        .package(name: "CordovaPluginChooser", path: "../../capacitor-cordova-ios-plugins/sources/CordovaPluginChooser"),
        .package(name: "CordovaPluginCustomurlscheme", path: "../../capacitor-cordova-ios-plugins/sources/CordovaPluginCustomurlscheme"),
        .package(name: "CordovaPluginDevice", path: "../../capacitor-cordova-ios-plugins/sources/CordovaPluginDevice"),
        .package(name: "CordovaPluginFile", path: "../../capacitor-cordova-ios-plugins/sources/CordovaPluginFile"),
        .package(name: "CordovaPluginLocalNotification", path: "../../capacitor-cordova-ios-plugins/sources/CordovaPluginLocalNotification"),
        .package(name: "CordovaPluginNetworkInformation", path: "../../capacitor-cordova-ios-plugins/sources/CordovaPluginNetworkInformation"),
        .package(name: "CordovaPluginScreenOrientation", path: "../../capacitor-cordova-ios-plugins/sources/CordovaPluginScreenOrientation"),
        .package(name: "CordovaPluginWkuserscript", path: "../../capacitor-cordova-ios-plugins/sources/CordovaPluginWkuserscript"),
        .package(name: "CordovaPluginWkwebviewCookies", path: "../../capacitor-cordova-ios-plugins/sources/CordovaPluginWkwebviewCookies"),
        .package(name: "CordovaSqliteStorage", path: "../../capacitor-cordova-ios-plugins/sources/CordovaSqliteStorage"),
        .package(name: "Nl.kingsquare.cordova.backgroundAudio", path: "../../capacitor-cordova-ios-plugins/sources/Nl.kingsquare.cordova.backgroundAudio"),
        .package(name: "CordovaPluginMoodleapp", path: "../../capacitor-cordova-ios-plugins/sources/CordovaPluginMoodleapp"),
        .package(name: "Es6PromisePlugin", path: "../../capacitor-cordova-ios-plugins/sources/Es6PromisePlugin")
    ],
    targets: [
        .target(
            name: "CapApp-SPM",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm"),
                .product(name: "MoodlehqCordovaPluginAdvancedHttp", package: "MoodlehqCordovaPluginAdvancedHttp"),
                .product(name: "MoodlehqCordovaPluginCamera", package: "MoodlehqCordovaPluginCamera"),
                .product(name: "MoodlehqCordovaPluginFileOpener", package: "MoodlehqCordovaPluginFileOpener"),
                .product(name: "MoodlehqCordovaPluginFileTransfer", package: "MoodlehqCordovaPluginFileTransfer"),
                .product(name: "MoodlehqCordovaPluginInappbrowser", package: "MoodlehqCordovaPluginInappbrowser"),
                .product(name: "MoodlehqCordovaPluginIonicKeyboard", package: "MoodlehqCordovaPluginIonicKeyboard"),
                .product(name: "MoodlehqCordovaPluginIonicWebview", package: "MoodlehqCordovaPluginIonicWebview"),
                .product(name: "MoodlehqCordovaPluginMediaCapture", package: "MoodlehqCordovaPluginMediaCapture"),
                .product(name: "MoodlehqCordovaPluginQrscanner", package: "MoodlehqCordovaPluginQrscanner"),
                .product(name: "MoodlehqCordovaPluginStatusbar", package: "MoodlehqCordovaPluginStatusbar"),
                .product(name: "MoodlehqCordovaPluginZip", package: "MoodlehqCordovaPluginZip"),
                .product(name: "MoodlehqPhonegapPluginPush", package: "MoodlehqPhonegapPluginPush"),
                .product(name: "CordovaClipboard", package: "CordovaClipboard"),
                .product(name: "CordovaPluginBadge", package: "CordovaPluginBadge"),
                .product(name: "CordovaPluginChooser", package: "CordovaPluginChooser"),
                .product(name: "CordovaPluginCustomurlscheme", package: "CordovaPluginCustomurlscheme"),
                .product(name: "CordovaPluginDevice", package: "CordovaPluginDevice"),
                .product(name: "CordovaPluginFile", package: "CordovaPluginFile"),
                .product(name: "CordovaPluginLocalNotification", package: "CordovaPluginLocalNotification"),
                .product(name: "CordovaPluginNetworkInformation", package: "CordovaPluginNetworkInformation"),
                .product(name: "CordovaPluginScreenOrientation", package: "CordovaPluginScreenOrientation"),
                .product(name: "CordovaPluginWkuserscript", package: "CordovaPluginWkuserscript"),
                .product(name: "CordovaPluginWkwebviewCookies", package: "CordovaPluginWkwebviewCookies"),
                .product(name: "CordovaSqliteStorage", package: "CordovaSqliteStorage"),
                .product(name: "Nl.kingsquare.cordova.backgroundAudio", package: "Nl.kingsquare.cordova.backgroundAudio"),
                .product(name: "CordovaPluginMoodleapp", package: "CordovaPluginMoodleapp"),
                .product(name: "Es6PromisePlugin", package: "Es6PromisePlugin")
            ]
        )
    ]
)
