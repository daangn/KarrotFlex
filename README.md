# KarrotFlex

[![CI Status](https://img.shields.io/travis/Geektree0101/KarrotFlex.svg?style=flat)](https://travis-ci.org/Geektree0101/KarrotFlex)
[![Version](https://img.shields.io/cocoapods/v/KarrotFlex.svg?style=flat)](https://cocoapods.org/pods/KarrotFlex)
[![License](https://img.shields.io/cocoapods/l/KarrotFlex.svg?style=flat)](https://cocoapods.org/pods/KarrotFlex)
[![Platform](https://img.shields.io/cocoapods/p/KarrotFlex.svg?style=flat)](https://cocoapods.org/pods/KarrotFlex)

Declarative UI sugar framework built on [FlexLayout](https://github.com/layoutBox/FlexLayout)
<br/>
👨‍🔧 Beware, Under construction 🧑‍🔧

<img src="https://github.com/daangn/KarrotFlex/blob/master/res/intro.png" />

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```swift
self.someView.flex.define {
  FlexRow($0) {
    FlexSpacer($0, width: 24.0)
    FlexVStack($0) {
      FlexItem($0, view: self.titleLabel)
      FlexSpacer($0, height: 8.0)
      FlexItem($0, view: self.descLabel)
      FlexSpacer($0, height: 24.0)
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
    .package(url: "https://github.com/daangn/KarrotFlex.git", from: "0.0.1")
  ],
  targets: [
    .target(name: "Example", dependencies: ["KarrotFlex"])
  ]
)
```

## Author

- [Geektree0101](https://github.com/Geektree0101), david@daangn.com
- [OhKanghoon](https://github.com/Ohkanghoon), ray@daangn.com

## License

KarrotFlex is available under the MIT license. See the LICENSE file for more info.
