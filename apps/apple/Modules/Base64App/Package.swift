// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Base64App",
    platforms: [
        .macOS(.v14),
    ],
    products: [
        .library(name: "Base64App", targets: ["Base64App"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Kamaalio/KamaalSwift", .upToNextMajor(from: "3.2.0")),
        .package(url: "https://github.com/sparkle-project/Sparkle", .upToNextMajor(from: "2.7.0"))
    ],
    targets: [
        .target(
            name: "Base64App",
            dependencies: [
                "Sparkle",
                .product(name: "KamaalExtensions", package: "KamaalSwift"),
                .product(name: "KamaalUI", package: "KamaalSwift"),
            ]
        ),
        .testTarget(name: "Base64AppTests", dependencies: ["Base64App"]),
    ]
)
