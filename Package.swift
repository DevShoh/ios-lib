// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "ZirhIosSDK",
    platforms: [
        .iOS(.v13) // SDK ishlaydigan eng minimal iOS versiyasini belgilang
    ],
    products: [
        .library(
            name: "ZirhIosSDK",
            targets: ["ZirhIosSDKWrapper"]
        ),
    ],
    dependencies: [],
    targets: [
        // 1. Binary Framework (.xcframework)
        .binaryTarget(
            name: "ZirhIosSDKBinary",
            path: "ZirhIosSDK.xcframework"
        ),
        
        // 2. Wrapper Target
        // Bu target binary frameworkni loyihaga bog'lab beradi
        .target(
            name: "ZirhIosSDKWrapper",
            dependencies: [
                .target(name: "ZirhIosSDKBinary")
            ],
            path: "Sources/ZirhIosSDK"
        )
    ]
)
