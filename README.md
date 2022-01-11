# KarrotFlex

[![CI Status](https://img.shields.io/travis/Geektree0101/KarrotFlex.svg?style=flat)](https://travis-ci.org/Geektree0101/KarrotFlex)
[![Version](https://img.shields.io/cocoapods/v/KarrotFlex.svg?style=flat)](https://cocoapods.org/pods/KarrotFlex)
[![License](https://img.shields.io/cocoapods/l/KarrotFlex.svg?style=flat)](https://cocoapods.org/pods/KarrotFlex)
[![Platform](https://img.shields.io/cocoapods/p/KarrotFlex.svg?style=flat)](https://cocoapods.org/pods/KarrotFlex)
[![CI](https://github.com/daangn/KarrotFlex/actions/workflows/ci.yml/badge.svg)](https://github.com/daangn/KarrotFlex/actions/workflows/ci.yml)

Declarative UI sugar framework built on [FlexLayout](https://github.com/layoutBox/FlexLayout)
<br/>
👨‍🔧 Beware, Under construction 🧑‍🔧

<img src="https://github.com/daangn/KarrotFlex/blob/master/res/intro.png" />

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```swift
self.someView.flex.define {
  FlexHStack($0) {
    FlexSpacer($0, spacing: 24.0)
    FlexVStack($0) {
      FlexItem($0, view: self.titleLabel)
      FlexSpacer($0, spacing: 8.0)
      FlexItem($0, view: self.descLabel)
      FlexSpacer($0, spacing: 24.0)
      FlexItem($0, view: self.infoLabel)
    }
  }
  .padding(16.0)
}
```

## Requirements

## Installation

### CocoaPods

```ruby
pod 'KarrotFlex'
```

### Swift Package Manager

In your Package.swift:

```swift
let package = Package(
  name: "Example",
  dependencies: [
    .package(url: "https://github.com/daangn/KarrotFlex.git", from: "1.0.0")
  ],
  targets: [
    .target(name: "Example", dependencies: ["KarrotFlex"])
  ]
)
```

## Author

- [Geektree0101](https://github.com/Geektree0101), david@daangn.com
- [OhKanghoon](https://github.com/Ohkanghoon), ray@daangnpay.com
- [leehonghwa](https://github.com/leehonghwa), daniel@daangn.com

## License

KarrotFlex is available under the MIT license. See the LICENSE file for more info.
