// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "FitSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "FitSDK",
            targets: ["FitSDKWrapper"]
        ),
    ],
    dependencies: [
        .package(url: "https://gitlab.com/spike_api/spike-ios-sdk", from: "4.2.41")
    ],
    targets: [
        .binaryTarget(
            name: "FitSDKBinary",
            path: "Sources/FitSDK/FitSDK.xcframework"
        ),
        .target(
            name: "FitSDKWrapper",
            dependencies: [
                "FitSDKBinary",
                .product(name: "SpikeSDK", package: "spike-ios-sdk")
            ]
        )
    ]
)

