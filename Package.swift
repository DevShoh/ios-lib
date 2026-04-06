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
    
    targets: [
        
        // 🔹 1. Binary Target (.xcframework)
        .binaryTarget(
            name: "ZirhIosSDKBinary",
            path: "ZirhIosSDK.xcframework"
        ),
        
        // 🔹 2. Wrapper Target (Swift layer)
        .target(
            name: "ZirhIosSDKWrapper",
            dependencies: [
                .target(name: "ZirhIosSDKBinary")
            ],
            path: "Sources/ZirhIosSDK",
            
            // 🔥 ENG MUHIM QATOR
            publicHeadersPath: "include"
        )
    ]
)
