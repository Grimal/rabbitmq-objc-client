// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "rabbitmq-objc-client",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "rabbitmq-objc-client",
            targets: ["rabbitmq-objc-client"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/robbiehanson/CocoaAsyncSocket", from: "7.6.4"),
        .package(url: "https://github.com/Grimal/JKVValue", branch: "SwiftPackageManager"),

    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "rabbitmq-objc-client",
            dependencies: [],
            path: "RMQClient"),
        .testTarget(
            name: "rabbitmq-objc-clientTests",
            dependencies: ["rabbitmq-objc-client"],
            path: "RMQClientTests")
    ],
)
