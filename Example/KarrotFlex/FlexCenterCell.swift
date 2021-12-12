//
//  FlexCenterCell.swift
//  KarrotFlex_Example
//
//  Created by Geektree0101 on 2021/12/12.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

import KarrotFlex

final class FlexCenterCell: UITableViewCell {

  private let backgroundImageView = UIView()
  private let daangniImageView = UIImageView()

  private let titleLabel = UILabel()
  private let descLabel = UILabel()

  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.setupUI()
    self.define()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  private func setupUI() {
    self.backgroundImageView.backgroundColor = .gray

    self.daangniImageView.image = UIImage(named: "daangnbot")
    self.daangniImageView.clipsToBounds = true

    self.titleLabel.text = "Daangni"
    self.titleLabel.numberOfLines = 0
    self.titleLabel.font = UIFont.boldSystemFont(ofSize: 14.0)

    self.descLabel.text = "Daangni is the neighborhood dog near you."
    self.descLabel.numberOfLines = 0
    self.descLabel.font = UIFont.systemFont(ofSize: 16.0)
  }

  private func define() {
    self.contentView.flex.define {
      $0.addItem().direction(.row).justifyContent(.start).alignItems(.center).define {
        FlexItem($0, view: self.backgroundImageView).size(100.0).define {
          FlexCenter($0, option: .XY) {
            FlexItem($0, view: self.daangniImageView).size(80.0)
          }
        }
        FlexSpacer($0, width: 24.0)
        FlexVStack($0, justifyContent: .start, alignItems: .start) {
          FlexItem($0, view: self.titleLabel)
          FlexSpacer($0, height: 8.0)
          FlexItem($0, view: self.descLabel)
        }.shrink(1.0)
      }.margin(16.0)
    }
  }

  override func layoutSubviews() {
    super.layoutSubviews()
    self.backgroundImageView.layer.cornerRadius = self.backgroundImageView.bounds.height * 0.5
    self.daangniImageView.layer.cornerRadius = self.daangniImageView.bounds.height * 0.5
  }

  override func sizeThatFits(_ size: CGSize) -> CGSize {
    self.contentView.bounds.size.width = size.width
    self.contentView.flex.layout(mode: .adjustHeight)
    return self.contentView.bounds.size
  }
}
