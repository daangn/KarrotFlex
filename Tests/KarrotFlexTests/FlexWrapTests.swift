//
//  FlexWrapTests.swift
//
//  Copyright (c) Danggeun Market, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

import Foundation
import XCTest

import SnapshotTesting

import KarrotFlex

final class FlexWrapTests: XCTestCase {

  private let buttons: [UIButton] = [
    "apple",
    "banana",
    "cinamon",
    "domino",
    "electrophysiological",
    "fire",
    "golf",
    "holymoly",
    "internet",
    "jallybean",
    "korea",
    "lemon"
  ].map {
    let button = UIButton()
    button.setTitle($0, for: .normal)
    button.setTitleColor(UIColor.white, for: .normal)
    button.backgroundColor = UIColor.blue
    button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24.0)
    button.layer.cornerRadius = 4.0
    if #available(iOS 15.0, *) {
      button.configuration = UIButton.Configuration.plain()
      button.configuration?.contentInsets = .init(
        top: 7.5, leading: 12.0, bottom: 7.5, trailing: 12.0
      )
    } else {
      button.titleEdgeInsets = .init(
        top: 7.5, left: 12.0, bottom: 7.5, right: 12.0
      )
    }
    return button
  }

  override func setUp() {
    super.setUp()

    isRecording = false
  }

  func test_vertical_wrap() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexWrap(flex, direction: .vertical, children: self.buttons)
    }

    assertSnapshot(matching: testView, as: .image)
  }

  func test_horizontal_wrap() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexWrap(flex, direction: .horizontal, children: self.buttons)
    }

    assertSnapshot(matching: testView, as: .image)
  }

  func test_wrap_vertical_child_define() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexWrap(
        flex,
        direction: .vertical,
        children: self.buttons,
        childDefine: {
          $0.margin(4.0)
        }
      )
    }

    assertSnapshot(matching: testView, as: .image)
  }

  func test_wrap_horizontal_child_define() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexWrap(
        flex,
        direction: .horizontal,
        children: self.buttons,
        childDefine: {
          $0.margin(4.0)
        }
      )
    }

    assertSnapshot(matching: testView, as: .image)
  }
}
