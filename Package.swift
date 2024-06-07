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
        .binaryTarget(name: "nostrFFI", url: "https://github.com/rust-nostr/nostr-swift/releases/download/0.32.0/nostrFFI.xcframework.zip", checksum: "75f9849a6771e488557ed280c221374fe785853e494d42ce323238e8845c0375"),
        .target(name: "Nostr", dependencies: ["nostrFFI"]),
    ]
)
