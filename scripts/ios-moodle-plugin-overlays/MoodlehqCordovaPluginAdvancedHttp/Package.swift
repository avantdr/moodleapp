// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "MoodlehqCordovaPluginAdvancedHttp",
    products: [.library(name: "MoodlehqCordovaPluginAdvancedHttp", targets: ["MoodlehqCordovaPluginAdvancedHttp"])],
    targets: [.target(name: "MoodlehqCordovaPluginAdvancedHttp", path: "Sources/MoodlehqCordovaPluginAdvancedHttp")]
)
