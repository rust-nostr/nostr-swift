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
        .binaryTarget(name: "nostrFFI", url: "https://github.com/rust-nostr/nostr-swift/releases/download/0.33.0/nostrFFI.xcframework.zip", checksum: "f0a4a4b89cf5a95aef00ce3707c837e28dd8ec7e5578fe3c2e092bacfe243d69"),
        .target(name: "Nostr", dependencies: ["nostrFFI"]),
    ]
)
