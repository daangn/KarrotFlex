//
//  FlexOverlayTests.swift
//  KarrotFlex_Tests
//
//  Created by Geektree0101 on 2021/12/12.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import XCTest
import KarrotFlex
import FBSnapshotTestCase

final class FlexOverlayTests: KarrotFlexSnapshotTestCase {

  private let redBox: UIView = {
    $0.backgroundColor = .red
    return $0
  }(UIView())

  private let blueBox: UIView = {
    $0.backgroundColor = .blue
    return $0
  }(UIView())

  private let yellowBox: UIView = {
    $0.backgroundColor = .yellow
    return $0
  }(UIView())

  override func setUp() {
    super.setUp()
    self.recordMode = false
  }

  func test_nested_overlay_from_large_to_small_rect() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) {
      FlexItem($0, view: self.redBox).size(400).overlay {
        FlexItem($0, view: self.blueBox).size(200).overlay {
          FlexItem($0, view: self.yellowBox).size(50)
        }
      }
    }
    self.verify()
  }

  func test_nested_centering_overlay_from_large_to_small_rect() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) {
      FlexCenter($0, option: .XY) {
        FlexItem($0, view: self.redBox).size(400).overlay {
          FlexCenter($0, option: .XY) {
            FlexItem($0, view: self.blueBox).size(200).overlay {
              FlexCenter($0, option: .XY) {
                FlexItem($0, view: self.yellowBox).size(50)
              }
            }
          }
        }
      }
    }
    self.verify()
  }

  func test_nested_overlay_from_small_to_large_rect() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) {
      FlexItem($0, view: self.yellowBox).size(50).overlay {
        FlexItem($0, view: self.blueBox).size(200).overlay {
          FlexItem($0, view: self.redBox).size(400)
        }
      }
    }
    self.verify()
  }

  func test_nested_centering_overlay_from_small_to_large_rect() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) {
      FlexCenter($0, option: .XY) {
        FlexItem($0, view: self.yellowBox).size(50).overlay {
          FlexCenter($0, option: .XY) {
            FlexItem($0, view: self.blueBox).size(200).overlay {
              FlexCenter($0, option: .XY) {
                FlexItem($0, view: self.redBox).size(400)
              }
            }
          }
        }
      }
    }
    self.verify()
  }

}
