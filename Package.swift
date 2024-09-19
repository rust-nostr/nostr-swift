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
        .binaryTarget(name: "nostrFFI", url: "https://github.com/rust-nostr/nostr-swift/releases/download/0.35.0/nostrFFI.xcframework.zip", checksum: "66c02ba27baac04c2dbbf4cb303640e13cda7ba5a91181fcea3fbd3d1d412558"),
        .target(name: "Nostr", dependencies: ["nostrFFI"]),
    ]
)
