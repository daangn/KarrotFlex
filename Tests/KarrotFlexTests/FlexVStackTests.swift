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

final class FlexVStackTests: XCTestCase {

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

  func test_default() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexVStack(flex) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }

    assertSnapshot(matching: testView, as: .image)
  }

  func test_justifyContent_space_between() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexVStack(flex, justifyContent: .spaceBetween) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }

    assertSnapshot(matching: testView, as: .image)
  }

  func test_justifyContent_space_around() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexVStack(flex, justifyContent: .spaceAround) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }

    assertSnapshot(matching: testView, as: .image)
  }

  func test_justifyContent_center() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexVStack(flex, justifyContent: .center) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }

    assertSnapshot(matching: testView, as: .image)
  }

  func test_justifyContent_end() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexVStack(flex, justifyContent: .end) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }

    assertSnapshot(matching: testView, as: .image)
  }

  func test_alignItems_stretch() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexVStack(flex, alignItems: .stretch) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }

    assertSnapshot(matching: testView, as: .image)
  }

  func test_alignItems_center() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexVStack(flex, alignItems: .center) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }

    assertSnapshot(matching: testView, as: .image)
  }

  func test_alignItems_end() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexVStack(flex, alignItems: .end) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }

    assertSnapshot(matching: testView, as: .image)
  }
}
