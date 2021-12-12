//
//  FlexInsetTests.swift
//  KarrotFlex_Tests
//
//  Created by Geektree0101 on 2021/11/04.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import XCTest
import KarrotFlex
import FBSnapshotTestCase

final class FlexInsetsTests: KarrotFlexSnapshotTestCase {

  private let boxView: UIView = {
    let view = UIView()
    view.backgroundColor = .red
    return view
  }()

  func test_inset_position() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexInset(
        FlexItem(flex, view: self.boxView).size(CGSize(width: 100.0, height: 100.0)),
        insets: UIEdgeInsets(top: 20.0, left: 20.0, bottom: .infinity, right: .infinity)
      )
    }

    self.verify()
  }

  func test_all_inset() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexInset(
        FlexItem(flex, view: self.boxView),
        all: 200.0
      )
    }

    self.verify()
  }

  func test_all_inset_with_UIEdgeInsets() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexInset(
        FlexItem(flex, view: self.boxView),
        insets: UIEdgeInsets(top: 200.0, left: 200.0, bottom: 200.0, right: 200.0)
      )
    }

    self.verify()
  }

  func test_vertical_inset() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexInset(
        FlexItem(flex, view: self.boxView),
        insets: UIEdgeInsets(top: 200.0, left: 0.0, bottom: 200.0, right: 0.0)
      )
    }

    self.verify()
  }

  func test_horizontal_inset() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexInset(
        FlexItem(flex, view: self.boxView),
        insets: UIEdgeInsets(top: 0.0, left: 200.0, bottom: 0.0, right: 200.0)
      )
    }

    self.verify()
  }

  func test_view_inset_position() {
    self.boxView.flex.size(CGSize(width: 100.0, height: 100.0))
    
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexInset(
        flex,
        view: self.boxView,
        insets: UIEdgeInsets(top: 20.0, left: 20.0, bottom: .infinity, right: .infinity)
      )
    }

    self.verify()
  }

  func test_view_all_inset() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexInset(
        flex,
        view: self.boxView,
        all: 200.0
      )
    }

    self.verify()
  }

  func test_view_all_inset_with_UIEdgeInsets() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexInset(
        flex,
        view: self.boxView,
        insets: UIEdgeInsets(top: 200.0, left: 200.0, bottom: 200.0, right: 200.0)
      )
    }

    self.verify()
  }

  func test_view_vertical_inset() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexInset(
        flex,
        view: self.boxView,
        insets: UIEdgeInsets(top: 200.0, left: 0.0, bottom: 200.0, right: 0.0)
      )
    }

    self.verify()
  }

  func test_view_horizontal_inset() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexInset(
        flex,
        view: self.boxView,
        insets: UIEdgeInsets(top: 0.0, left: 200.0, bottom: 0.0, right: 200.0)
      )
    }

    self.verify()
  }
}
