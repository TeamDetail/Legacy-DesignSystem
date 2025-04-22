// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Legacy-DesignSystem",
    products: [
        .library(
            name: "Legacy-DesignSystem",
            targets: ["Legacy-DesignSystem"]),
    ],
    targets: [
        .target(
            name: "Legacy-DesignSystem",
            path: "Sources/Legacy-DesignSystem",
            resources: [
                .process("Foundation/Typography/Font")
            ]
        ),
    ]
)

