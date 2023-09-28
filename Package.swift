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
        .binaryTarget(name: "nostrFFI", url: "https://github.com/rust-nostr/nostr-swift/releases/download/0.0.4/nostrFFI.xcframework.zip", checksum: "ca119093aae06f470e3f83114470b7a68ecb4b2522ee334c8addfdcec34812c7"),
        .target(name: "Nostr", dependencies: ["nostrFFI"]),
    ]
)
