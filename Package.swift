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
        .binaryTarget(name: "nostrFFI", url: "https://github.com/rust-nostr/nostr-swift/releases/download/0.8.0/nostrFFI.xcframework.zip", checksum: "8f5beb56d213f1971733aaa8c77e59065ba275de40eb1473de35160c2e782ab2"),
        .target(name: "Nostr", dependencies: ["nostrFFI"]),
    ]
)
