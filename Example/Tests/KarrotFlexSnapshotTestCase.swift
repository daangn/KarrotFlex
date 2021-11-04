//
//  KarrotFlexSnapshotTestCase.swift
//  KarrotFlex_Tests
//
//  Created by Geektree0101 on 2021/11/03.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import KarrotFlex
import FlexLayout
import FBSnapshotTestCase

class KarrotFlexTestView: UIView {


}

class KarrotFlexSnapshotTestCase: FBSnapshotTestCase {

  var testView: KarrotFlexTestView!

  override func setUp() {
    super.setUp()
    self.testView = KarrotFlexTestView()
    self.testView.backgroundColor = .green
    self.recordMode = false
  }

  func verify() {
    FBSnapshotVerifyView(self.testView)
  }

  func testDefine(parentSize: CGSize, _ closure: @escaping (Flex) -> Void) {
    self.testView.flex.define(closure)
    self.testView.bounds = CGRect(origin: .zero, size: parentSize)
    self.testView.flex.layout()
    self.testView.setNeedsLayout()
  }
}
