// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "ZirhIosSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "ZirhIosSDK",
            targets: ["ZirhIosSDKWrapper"]
        ),
    ],
    dependencies: [],
    targets: [
        // Binary Framework
        .binaryTarget(
            name: "ZirhIosSDKBinary",
            path: "ZirhIosSDK.xcframework"
        ),
        // Wrapper Target
        .target(
            name: "ZirhIosSDKWrapper",
            dependencies: ["ZirhIosSDKBinary"],
            path: "Sources/ZirhIosSDK",
            publicHeadersPath: "include"
        )
    ]
)
