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
self.someView.flex.define { flex in
  FlexRow(flex) { row in
    FlexSpacer(row, width: 24.0)
    FlexColumn(row) { col in
      FlexItem(col, view: self.titleLabel)
      FlexSpacer(col, height: 8.0)
      FlexItem(col, view: self.descLabel)
      FlexSpacer(col, height: 24.0)
      FlexItem(col, view: self.infoLabel)
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

- Geektree0101, david@daangn.com
- OhKanghoon, ray@daangn.com

## License

KarrotFlex is available under the MIT license. See the LICENSE file for more info.
