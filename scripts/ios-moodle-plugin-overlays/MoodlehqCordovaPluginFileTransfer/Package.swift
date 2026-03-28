// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "MoodlehqCordovaPluginFileTransfer",
    products: [.library(name: "MoodlehqCordovaPluginFileTransfer", targets: ["MoodlehqCordovaPluginFileTransfer"])],
    targets: [.target(name: "MoodlehqCordovaPluginFileTransfer", path: "Sources/MoodlehqCordovaPluginFileTransfer")]
)
