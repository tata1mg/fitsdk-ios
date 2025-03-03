// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "FitSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "FitSDK",
            targets: ["FitSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "FitSDK",
            path: "FitSDK.xcframework"
        )
    ]
)
