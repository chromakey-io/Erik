// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Erik",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Erik",
            targets: ["Erik"]),
        .library(
            name: "Foundation",
            targets: ["Foundation"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/tid-kijyun/Kanna.git", .exact("5.0.0")),
        .package(url: "https://github.com/Thomvis/BrightFutures.git", .exact("8.0.1")),
        .package(url: "https://github.com/antitypical/Result.git", .exact("4.1.0")),
        //.package(url: "https://github.com/nvzqz/FileKit/", .exact("develop")) - for Tests which have been cut from SPM for now 
        // probably need to figure out how to use github hashes or a mechanism for "branches"
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Erik",
            dependencies: ["Foundation", "Kanna", "BrightFutures", "Result"]),
    ]
)
