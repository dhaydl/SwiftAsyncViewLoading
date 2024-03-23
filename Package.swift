// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftAsyncViewLoading",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .watchOS(.v8),
        .tvOS(.v15)
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
