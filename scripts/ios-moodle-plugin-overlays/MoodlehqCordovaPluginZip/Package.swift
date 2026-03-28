// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "MoodlehqCordovaPluginZip",
    products: [.library(name: "MoodlehqCordovaPluginZip", targets: ["MoodlehqCordovaPluginZip"])],
    targets: [.target(name: "MoodlehqCordovaPluginZip", path: "Sources/MoodlehqCordovaPluginZip")]
)
