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
        .binaryTarget(name: "nostrFFI", url: "https://github.com/rust-nostr/nostr-swift/releases/download/0.10.0/nostrFFI.xcframework.zip", checksum: "f7ce3f38342ebfb554361a3000f4bde04675d9b26865d0190fda39bb5ff6ecca"),
        .target(name: "Nostr", dependencies: ["nostrFFI"]),
    ]
)
