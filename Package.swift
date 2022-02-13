// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "RxScreeen",
    platforms: [
      .macOS(.v10_10)
    ],
    products: [
        .library(
            name: "RxScreeen",
            targets: ["RxScreeen"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Clipy/Screeen", from: "2.0.1"),
        .package(url: "https://github.com/ReactiveX/RxSwift", from: "6.0.0"),
    ],
    targets: [
        .target(
            name: "RxScreeen",
            dependencies: ["Screeen", "RxSwift", "RxCocoa"],
            path: "Lib/RxScreeen"),
        .testTarget(
            name: "RxScreeenTests",
            dependencies: ["RxScreeen"],
            path: "Lib/RxScreeenTests"),
    ],
    swiftLanguageVersions: [.v5]
)
