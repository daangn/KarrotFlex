//
//  FlexVStackTests.swift
//
//
//  Created by Kanghoon Oh on 2022/01/14.
//

import Foundation
import XCTest

import SnapshotTesting

import KarrotFlex

final class FlexOverlayTests: XCTestCase {

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

    isRecording = false
  }

  func test_nested_overlay_from_large_to_small_rect() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) {
      FlexItem($0, view: self.redBox).size(400).overlay {
        FlexItem($0, view: self.blueBox).size(200).overlay {
          FlexItem($0, view: self.yellowBox).size(50)
        }
      }
    }

    assertSnapshot(matching: testView, as: .image)
  }

  func test_nested_centering_overlay_from_large_to_small_rect() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) {
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

    assertSnapshot(matching: testView, as: .image)
  }

  func test_nested_overlay_from_small_to_large_rect() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) {
      FlexItem($0, view: self.yellowBox).size(50).overlay {
        FlexItem($0, view: self.blueBox).size(200).overlay {
          FlexItem($0, view: self.redBox).size(400)
        }
      }
    }

    assertSnapshot(matching: testView, as: .image)
  }

  func test_nested_centering_overlay_from_small_to_large_rect() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) {
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

    assertSnapshot(matching: testView, as: .image)
  }

  func test_non_clip_overlay_test() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) {
      FlexItem($0, view: self.yellowBox).size(200).overlay {
        FlexItem($0, view: self.blueBox).size(200).position(.absolute).left(100).top(100)
      }.nonCilpsToBounds()
    }

    assertSnapshot(matching: testView, as: .image)
  }
}
