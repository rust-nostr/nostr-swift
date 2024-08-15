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
        .binaryTarget(name: "nostrFFI", url: "https://github.com/rust-nostr/nostr-swift/releases/download/0.34.0/nostrFFI.xcframework.zip", checksum: "5a7ae2898b09439f5ae56788d8cb88736cf7f44178b36290aa5f14f6a287c400"),
        .target(name: "Nostr", dependencies: ["nostrFFI"]),
    ]
)
