// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Reflex",
  platforms: [
    .iOS(.v9),
  ],
  products: [
    .library(
      name: "Reflex",
      targets: ["Reflex"]
    ),
  ],
  dependencies: [
    .package(
      url: "https://github.com/layoutBox/FlexLayout",
      .upToNextMajor(from: "1.3.0")
    )
  ],
  targets: [
    .target(
      name: "Reflex",
      dependencies: [
        .product(name: "FlexLayout", package: "FlexLayout"),
      ],
      cSettings: [
        .define("FLEXLAYOUT_SWIFT_PACKAGE")
      ],
      cxxSettings: [
        .define("FLEXLAYOUT_SWIFT_PACKAGE"),
      ],
      swiftSettings: [
        .define("FLEXLAYOUT_SWIFT_PACKAGE")
      ]
    ),
  ]
)
