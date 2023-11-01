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
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "nostrFFI", url: "https://github.com/rust-nostr/nostr-swift/releases/download/0.0.5/nostrFFI.xcframework.zip", checksum: "d68d6179768fd7864ae95204e04a2ad1172198ba8ccc41e0484c9af474ddb625"),
        .target(name: "Nostr", dependencies: ["nostrFFI"]),
    ]
)
