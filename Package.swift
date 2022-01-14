// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "KarrotFlex",
  platforms: [
    .iOS(.v11),
  ],
  products: [
    .library(
      name: "KarrotFlex",
      targets: ["KarrotFlex"]
    ),
  ],
  dependencies: [
    .package(
      url: "https://github.com/layoutBox/FlexLayout",
      .upToNextMajor(from: "1.3.0")
    ),
    .package(
      url: "https://github.com/layoutBox/PinLayout",
      .upToNextMajor(from: "1.10.0")
    ),
    .package(
      url: "https://github.com/pointfreeco/swift-snapshot-testing.git",
      from: "1.9.0"
    ),
  ],
  targets: [
    .target(
      name: "KarrotFlex",
      dependencies: [
        .product(name: "FlexLayout", package: "FlexLayout"),
        .product(name: "PinLayout", package: "PinLayout"),
      ],
      cSettings: [
        .define("FLEXLAYOUT_SWIFT_PACKAGE"),
      ],
      cxxSettings: [
        .define("FLEXLAYOUT_SWIFT_PACKAGE"),
      ],
      swiftSettings: [
        .define("FLEXLAYOUT_SWIFT_PACKAGE"),
      ]
    ),
    .testTarget(
      name: "KarrotFlexTests",
      dependencies: [
        "KarrotFlex",
        .product(name: "SnapshotTesting", package: "swift-snapshot-testing"),
      ],
      cSettings: [
        .define("FLEXLAYOUT_SWIFT_PACKAGE"),
      ],
      cxxSettings: [
        .define("FLEXLAYOUT_SWIFT_PACKAGE"),
      ],
      swiftSettings: [
        .define("FLEXLAYOUT_SWIFT_PACKAGE"),
      ]
    ),
  ]
)
