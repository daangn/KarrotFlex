//
//  FlexVStackTests.swift
//  KarrotFlex_Tests
//
//  Created by Geektree0101 on 2021/12/12.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import XCTest
import KarrotFlex
import FBSnapshotTestCase

final class FlexVStackTests: KarrotFlexSnapshotTestCase {

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

  func test_default() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexVStack(flex) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }
    self.verify()
  }

  func test_justifyContent_space_between() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexVStack(flex, justifyContent: .spaceBetween) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }
    self.verify()
  }

  func test_justifyContent_space_around() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexVStack(flex, justifyContent: .spaceAround) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }
    self.verify()
  }

  func test_justifyContent_center() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexVStack(flex, justifyContent: .center) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }
    self.verify()
  }

  func test_justifyContent_end() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexVStack(flex, justifyContent: .end) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }
    self.verify()
  }

  func test_alignItems_stretch() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexVStack(flex, alignItems: .stretch) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }
    self.verify()
  }

  func test_alignItems_center() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexVStack(flex, alignItems: .center) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }
    self.verify()
  }

  func test_alignItems_end() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexVStack(flex, alignItems: .end) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }
    self.verify()
  }
}
