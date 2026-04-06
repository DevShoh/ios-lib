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
        // Binary target
.binaryTarget(
    name: "ZirhIosSDKBinary",
    path: "ZirhIosSDK.xcframework"
),

// Wrapper target
.target(
    name: "ZirhIosSDKWrapper",
    dependencies: ["ZirhIosSDKBinary"],
    path: "Sources/ZirhIosSDK",
    publicHeadersPath: "include"
)
    ]
)
