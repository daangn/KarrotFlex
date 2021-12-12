//
//  FlexAnimationCell.swift
//  KarrotFlex
//
//  Created by Geektree0101 on 2021/12/12.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import UIKit
import KarrotFlex

final class FlexAnimationCell: UITableViewCell {

  private let labelView = UILabel()

  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.accessoryType = .disclosureIndicator
    self.labelView.text = "Go to animation example"
    self.labelView.numberOfLines = 0
    self.contentView.flex.define {
      FlexItem($0, view: self.labelView).margin(24.0)
    }
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func sizeThatFits(_ size: CGSize) -> CGSize {
    self.contentView.bounds.size.width = size.width
    self.contentView.flex.layout(mode: .adjustHeight)
    return self.contentView.bounds.size
  }
  
}
