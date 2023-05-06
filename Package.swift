// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "Keyboard",
    platforms: [.macOS(.v12), .iOS(.v14)],
    products: [.library(name: "Keyboard", targets: ["Keyboard"])],
    dependencies: [.package(url: "https://github.com/jishj-sudo/Tonic", from: "1.0.0")],
    targets: [
        .target(name: "Keyboard", dependencies: ["Tonic"]),
        .testTarget(name: "KeyboardTests", dependencies: ["Keyboard"]),
    ]
)
