//
//  KarrotFlexTestView.swift
//  
//
//  Created by Kanghoon Oh on 2022/01/14.
//

import UIKit

import FlexLayout
import SnapshotTesting

final class KarrotFlexTestView: UIView {

  // MARK: Initializing

  init(parentSize: CGSize, _ closure: @escaping (Flex) -> Void) {
    super.init(frame: CGRect(origin: .zero, size: parentSize))
    self.backgroundColor = .green
    self.flex.define(closure)
    self.flex.layout()
    self.setNeedsLayout()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
