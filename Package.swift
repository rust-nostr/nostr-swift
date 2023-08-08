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
        .binaryTarget(name: "nostrFFI", url: "https://github.com/rust-nostr/nostr-swift/releases/download/0.0.3/nostrFFI.xcframework.zip", checksum: "5adeb327b7f4bd698ecedf2f1df96b0852b5ff6892c23d751a2cb20e7d8610fc"),
        .target(name: "Nostr", dependencies: ["nostrFFI"]),
    ]
)
