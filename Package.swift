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
        .binaryTarget(name: "nostrFFI", url: "https://github.com/rust-nostr/nostr-swift/releases/download/0.12.0/nostrFFI.xcframework.zip", checksum: "fc6523abb6ee7bb00b4b0cbe00306fcd0d47d7b1f3c09b581fbd3da90750869c"),
        .target(name: "Nostr", dependencies: ["nostrFFI"]),
    ]
)
