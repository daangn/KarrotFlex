//
//  FlexWrapCell.swift
//  KarrotFlex_Example
//
//  Created by Geektree0101 on 2021/12/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

import KarrotFlex

final class FlexWrapCell: UITableViewCell {

  private let wrapTitle = UILabel()
  private var buttons: [UIButton] = []

  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.setupUI()
    self.define()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  private func setupUI() {
    self.wrapTitle.text = "Wrap Example"
    self.wrapTitle.font = UIFont.boldSystemFont(ofSize: 16.0)

    let texts: [String] = [
      "apple",
      "banana",
      "cinamon",
      "domino",
      "electrophysiological",
      "fire",
      "golf",
      "holymoly",
      "internet",
      "jallybean",
      "korea",
      "lemon"
    ]

    self.buttons = texts.map {
      let button = UIButton()
      button.setTitle($0, for: .normal)
      button.setTitleColor(UIColor.white, for: .normal)
      button.backgroundColor = UIColor.blue
      button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24.0)
      button.layer.cornerRadius = 4.0
      if #available(iOS 15.0, *) {
        button.configuration = UIButton.Configuration.plain()
        button.configuration?.contentInsets = .init(
          top: 7.5, leading: 12.0, bottom: 7.5, trailing: 12.0
        )
      } else {
        button.titleEdgeInsets = .init(
          top: 7.5, left: 12.0, bottom: 7.5, right: 12.0
        )
      }
      return button
    }
  }

  private func define() {
    self.contentView.flex.define {
      FlexVStack($0) {
        FlexItem($0, view: self.wrapTitle)
        FlexSpacer($0, spacing: 24.0)
        FlexWrap(
          $0,
          direction: .horizontal,
          children: self.buttons,
          childDefine: {
            $0.margin(4.0)
          }
        )
      }.padding(24.0)
    }
  }

  override func sizeThatFits(_ size: CGSize) -> CGSize {
    self.contentView.bounds.size.width = size.width
    self.contentView.flex.layout(mode: .adjustHeight)
    return self.contentView.bounds.size
  }
}
