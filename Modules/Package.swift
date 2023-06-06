// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Modules",
    products: [
        .library(name: "Modules", targets: ["Modules"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Modules",
            dependencies: ["Segment"]),
        .binaryTarget(
            name: "Segment",
            url: "https://github.com/segmentio/analytics-swift/releases/download/1.4.5/Segment.xcframework.zip",
            checksum: "32d3ba8030d7087c68bf1fa5b39bc194633aaae8310d7b089dad43dc95445e1d"
        )
    ]
)
