// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SugarKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "SugarKit",
            targets: ["SugarKit"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SugarKit",
            dependencies: []
        ),
        .testTarget(
            name: "SugarKitTests",
            dependencies: ["SugarKit"]
        )
    ]
)
