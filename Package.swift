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
        .binaryTarget(name: "nostrFFI", url: "https://github.com/rust-nostr/nostr-swift/releases/download/0.7.1/nostrFFI.xcframework.zip", checksum: "ee82b3e059cc2664ecd9ba7f902c0cfc2a7ba262b7e15cbcda00ba5809aadb00"),
        .target(name: "Nostr", dependencies: ["nostrFFI"]),
    ]
)
