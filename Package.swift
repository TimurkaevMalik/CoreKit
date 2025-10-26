// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let kitName = "CoreKit"
let kitNameDynamic = kitName + "-Dynamic"

let package = Package(
    name: kitName,
    platforms: [.iOS(.v13)],
    products: [
        .library(name: kitName, targets: [kitName]),
        .library(name: kitNameDynamic, type: .dynamic ,  targets: [kitName])
    ],
    targets: [
        .target(name: kitName)
    ]
)
