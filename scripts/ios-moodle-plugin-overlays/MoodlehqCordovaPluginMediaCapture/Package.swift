// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "MoodlehqCordovaPluginMediaCapture",
    products: [.library(name: "MoodlehqCordovaPluginMediaCapture", targets: ["MoodlehqCordovaPluginMediaCapture"])],
    targets: [.target(name: "MoodlehqCordovaPluginMediaCapture", path: "Sources/MoodlehqCordovaPluginMediaCapture")]
)
