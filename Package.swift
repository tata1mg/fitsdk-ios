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
        .package(url: "https://gitlab.com/spike_api/spike-ios-sdk", .exact("4.5.21"))
    ],
    targets: [
        .binaryTarget(
            name: "FitSDK",
            path: "Sources/FitSDK/FitSDK.xcframework"
        ),
        .target(
            name: "FitSDKWrapper",
            dependencies: [
                "FitSDK",
                .product(name: "SpikeSDK", package: "spike-ios-sdk")
            ]
        )
    ]
)

