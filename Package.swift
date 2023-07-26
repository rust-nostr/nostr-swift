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
        .binaryTarget(name: "nostrFFI", url: "https://github.com/rust-nostr/nostr-swift/releases/download/0.0.2/nostrFFI.xcframework.zip", checksum: "0cd2f26579f9fdb3da3e91e71a8db4da1581db0cd5dbcc59956e8fa5aa1fe4c3"),
        .target(name: "Nostr", dependencies: ["nostrFFI"]),
    ]
)
