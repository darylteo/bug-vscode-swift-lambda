// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "MyLambda",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .executable(name: "MyLambda", targets: ["MyLambda"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swift-server/swift-aws-lambda-runtime.git", from: "1.0.0-alpha"),
        .package(url: "https://github.com/soto-project/soto.git", from: "6.0.0")
    ],
    targets: [
        .executableTarget(name: "MyLambda", dependencies: [
            .product(name: "AWSLambdaRuntime", package: "swift-aws-lambda-runtime"),
            .product(name: "SotoS3", package: "soto"),
            .product(name: "SotoSES", package: "soto"),
            .product(name: "SotoIAM", package: "soto")
        ]),
    ]
)