// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CoreKit",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "CoreKit", type: .dynamic ,  targets: ["CoreKit"]),
    ],
    targets: [
        .target(name: "CoreKit")
    ]
)
