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
        .binaryTarget(name: "nostrFFI", url: "https://github.com/rust-nostr/nostr-swift/releases/download/0.6.0/nostrFFI.xcframework.zip", checksum: "a0cb9b8c54bdd4168f3d63410e17b9e50520087f22c3000268f4efb642dab4e2"),
        .target(name: "Nostr", dependencies: ["nostrFFI"]),
    ]
)
