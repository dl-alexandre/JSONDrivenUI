// swift-tools-version:5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JSONDrivenUI",
    platforms: [
        .iOS(.v14),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "JSONDrivenUI",
            targets: ["JSONDrivenUI"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "JSONDrivenUI",
            dependencies: [
            ],
            exclude: ["Preview"]),
        .testTarget(
            name: "JSONDrivenUITests",
            dependencies: ["JSONDrivenUI"]),
    ]
)
