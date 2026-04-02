let package = Package(
    name: "ZirhIosSDK",
    products: [
        .library(name: "ZirhIosSDK", targets: ["ZirhIosSDKWrapper"])
    ],
    targets: [
        .binaryTarget(
            name: "ZirhIosSDKBinary",
            path: "ZirhIosSDK.xcframework"
        ),
        .target(
            name: "ZirhIosSDKWrapper",
            dependencies: ["ZirhIosSDKBinary"],
            path: "Sources/ZirhIosSDK"
        )
    ]
)