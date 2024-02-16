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
        .binaryTarget(name: "nostrFFI", url: "https://github.com/rust-nostr/nostr-swift/releases/download/0.9.0/nostrFFI.xcframework.zip", checksum: "922bd57c9f4bdc237598dc156bf02547c2a22f8ff7da927f3502e810beb81add"),
        .target(name: "Nostr", dependencies: ["nostrFFI"]),
    ]
)
