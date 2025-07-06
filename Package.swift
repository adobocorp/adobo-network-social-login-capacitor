// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AdoboNetworkSocialLoginCapacitor",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "AdoboNetworkSocialLoginCapacitor",
            targets: ["AdoboNetworkSocialLoginCapacitorPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "AdoboNetworkSocialLoginCapacitorPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/AdoboNetworkSocialLoginCapacitorPlugin"),
        .testTarget(
            name: "AdoboNetworkSocialLoginCapacitorPluginTests",
            dependencies: ["AdoboNetworkSocialLoginCapacitorPlugin"],
            path: "ios/Tests/AdoboNetworkSocialLoginCapacitorPluginTests")
    ]
)