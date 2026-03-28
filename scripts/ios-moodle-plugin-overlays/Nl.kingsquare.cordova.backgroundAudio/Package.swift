// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "Nl.kingsquare.cordova.backgroundAudio",
    products: [.library(name: "Nl.kingsquare.cordova.backgroundAudio", targets: ["Nl.kingsquare.cordova.backgroundAudio"])],
    targets: [.target(name: "Nl.kingsquare.cordova.backgroundAudio", path: "Sources/Nl.kingsquare.cordova.backgroundAudio")]
)
