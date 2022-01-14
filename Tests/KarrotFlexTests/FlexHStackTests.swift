//
//  FlexHStackTests.swift
//
//
//  Created by Kanghoon Oh on 2022/01/14.
//

import Foundation
import XCTest

import SnapshotTesting

import KarrotFlex

final class FlexHStackTests: XCTestCase {

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

  private let titleLabel: UILabel = {
    $0.backgroundColor = .red
    $0.text = "title"
    $0.font = UIFont.systemFont(ofSize: 48.0)
    $0.textColor = .white
    return $0
  }(UILabel())

  private let subtitleLabel: UILabel = {
    $0.backgroundColor = .blue
    $0.text = "subtitle"
    $0.font = UIFont.systemFont(ofSize: 24.0)
    $0.textColor = .white
    return $0
  }(UILabel())

  private let descriptionLabel: UILabel = {
    $0.backgroundColor = .yellow
    $0.text = "description"
    $0.font = UIFont.systemFont(ofSize: 12.0)
    return $0
  }(UILabel())

  override func setUp() {
    super.setUp()

    isRecording = false
  }

  func test_default() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexHStack(flex) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }

    assertSnapshot(matching: testView, as: .image)
  }

  func test_justifyContent_space_between() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexHStack(flex, justifyContent: .spaceBetween) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }

    assertSnapshot(matching: testView, as: .image)
  }

  func test_justifyContent_space_around() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexHStack(flex, justifyContent: .spaceAround) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }

    assertSnapshot(matching: testView, as: .image)
  }

  func test_justifyContent_center() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexHStack(flex, justifyContent: .center) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }

    assertSnapshot(matching: testView, as: .image)
  }

  func test_justifyContent_end() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexHStack(flex, justifyContent: .end) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }

    assertSnapshot(matching: testView, as: .image)
  }

  func test_alignItems_stretch() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexHStack(flex, alignItems: .stretch) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }

    assertSnapshot(matching: testView, as: .image)
  }

  func test_alignItems_center() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexHStack(flex, alignItems: .center) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }

    assertSnapshot(matching: testView, as: .image)
  }

  func test_alignItems_end() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexHStack(flex, alignItems: .end) {
        FlexItem($0, view: self.redBox).size(50.0)
        FlexItem($0, view: self.blueBox).size(50.0)
        FlexItem($0, view: self.yellowBox).size(50.0)
      }.width(100%).height(100%)
    }

    assertSnapshot(matching: testView, as: .image)
  }

  func test_alignItems_baseline() {
    let testView = KarrotFlexTestView(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexHStack(flex, justifyContent: .center, alignItems: .baseline) {
        FlexItem($0, view: self.titleLabel).height(120.0)
        FlexItem($0, view: self.subtitleLabel).height(60.0)
        FlexItem($0, view: self.descriptionLabel).height(80.0)
      }.width(100%).height(100%)
    }

    assertSnapshot(matching: testView, as: .image)
  }
}
