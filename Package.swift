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
        .binaryTarget(name: "nostrFFI", url: "https://github.com/rust-nostr/nostr-swift/releases/download/0.11.0/nostrFFI.xcframework.zip", checksum: "5fe2a930cd24dea4c42c71beaab8f018d0a42cacd179633c343614dc7d2a7f93"),
        .target(name: "Nostr", dependencies: ["nostrFFI"]),
    ]
)
