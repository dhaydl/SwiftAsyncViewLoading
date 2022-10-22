// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftAsyncViewLoading",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
        .watchOS(.v6),
        .tvOS(.v14)
    ],
    products: [
        .library(
            name: "SwiftAsyncViewLoading",
            targets: ["SwiftAsyncViewLoading"]
        ),
    ],
    dependencies: [
        
    ],
    targets: [
        .target(
            name: "SwiftAsyncViewLoading",
            dependencies: []
        ),
        .testTarget(
            name: "SwiftAsyncViewLoadingTests",
            dependencies: ["SwiftAsyncViewLoading"]
        ),
    ]
)
