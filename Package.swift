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
        .binaryTarget(name: "nostrFFI", url: "https://github.com/rust-nostr/nostr-swift/releases/download/0.11.1/nostrFFI.xcframework.zip", checksum: "dea55e704cf190e4d356fc8e283dafed43bd414bbecee5a7a57893ced67fa444"),
        .target(name: "Nostr", dependencies: ["nostrFFI"]),
    ]
)
