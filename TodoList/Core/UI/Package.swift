// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(

    name: "UI",

     platforms: [
        .iOS(.v15),
    ],

    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "UI",
            targets: ["UI"]),
    ],

    dependencies: [
        
        .package(path: "../../Impl/LogicImpl"),

    ],

    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "UI",
            dependencies: ["LogicImpl"]),
        .testTarget(
            name: "UITests",
            dependencies: ["UI"]),
    ]
)
