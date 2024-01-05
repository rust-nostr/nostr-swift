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
        .binaryTarget(name: "nostrFFI", url: "https://github.com/rust-nostr/nostr-swift/releases/download/0.7.0/nostrFFI.xcframework.zip", checksum: "864cb5615ba9b567792bf7fa6f61018a0a4320897a972495e2c3ae7714bb356c"),
        .target(name: "Nostr", dependencies: ["nostrFFI"]),
    ]
)
