// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "UIStackViewAppendage",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "UIStackViewAppendage",
            targets: ["UIStackViewAppendage"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "UIStackViewAppendage",
            dependencies: []
        ),
    ]
)
