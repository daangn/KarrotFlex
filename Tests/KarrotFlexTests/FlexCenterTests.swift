//
//  FlexCenterTests.swift
//
//
//  Created by Kanghoon Oh on 2022/01/14.
//

import XCTest

import SnapshotTesting

import KarrotFlex

final class FlexCenterTests: XCTestCase {

  private let boxView: UIView = {
    let view = UIView()
    view.backgroundColor = .red
    return view
  }()

  override func setUp() {
    super.setUp()

    isRecording = false
  }

  func test_center_XY() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexCenter(flex, option: .XY) { center in
        FlexItem(center, view: self.boxView).size(100.0)
      }
    }

    assertSnapshot(matching: testView, as: .image)
  }

  func test_center_X() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexCenter(flex, option: .X) { center in
        FlexItem(center, view: self.boxView).size(100.0)
      }
    }

    assertSnapshot(matching: testView, as: .image)
  }

  func test_center_Y() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexCenter(flex, option: .Y) { center in
        FlexItem(center, view: self.boxView).size(100.0)
      }
    }

    assertSnapshot(matching: testView, as: .image)
  }
}
