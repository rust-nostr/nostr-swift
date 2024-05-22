// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "nostr-swift",
    platforms: [
        .macOS(.v12),
        .iOS(.v14),
    ],
    products: [
        .library(name: "Nostr", targets: ["nostrFFI", "Nostr"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "nostrFFI", url: "https://github.com/rust-nostr/nostr-swift/releases/download/0.12.1/nostrFFI.xcframework.zip", checksum: "3f3d63a701d8f33585e0e796ded5890a7d3db63c1b9a7775732b7bd37ded1dd5"),
        .target(name: "Nostr", dependencies: ["nostrFFI"]),
    ]
)
