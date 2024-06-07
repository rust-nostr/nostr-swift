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
        .binaryTarget(name: "nostrFFI", url: "https://github.com/rust-nostr/nostr-swift/releases/download/0.32.1/nostrFFI.xcframework.zip", checksum: "440c9bb42ef42f6f73bc8c4131917cd48de424d000a43c196aba9c1a3e29f43a"),
        .target(name: "Nostr", dependencies: ["nostrFFI"]),
    ]
)
