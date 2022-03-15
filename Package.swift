// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: ["TensorFlowLiteC", "TensorFlowLiteCCoreML", "TensorFlowLiteCMetal","Link"]),
    ],
    targets: [
        .binaryTarget(name: "TensorFlowLiteC", path: "TensorFlowLiteC.xcframework"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", path: "TensorFlowLiteCCoreML.xcframework"),
        .binaryTarget(name: "TensorFlowLiteCMetal", path: "TensorFlowLiteCMetal.xcframework"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")])
    ]
)
