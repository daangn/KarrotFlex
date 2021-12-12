//
//  FlexVStackCell.swift
//  KarrotFlex_Example
//
//  Created by Geektree0101 on 2021/12/12.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

import KarrotFlex

final class FlexVStackCell: UITableViewCell {

  private let titleLabel = UILabel()
  private let descLabel = UILabel()
  private let infoLabel = UILabel()

  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.setupUI()
    self.define()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  private func setupUI() {
    self.titleLabel.text = "Welcome to KarrotFlex showcase"
    self.titleLabel.numberOfLines = 0
    self.titleLabel.font = UIFont.boldSystemFont(ofSize: 28.0)

    self.descLabel.text = "KarrotFlex is declarative iOS UI sugar framework built on FlexLayout"
    self.descLabel.numberOfLines = 0
    self.descLabel.font = UIFont.systemFont(ofSize: 16.0)

    self.infoLabel.text = "https://team.daangn.com/"
    self.infoLabel.font = UIFont.systemFont(ofSize: 14.0)
    self.infoLabel.textColor = UIColor.gray
  }

  private func define() {
    self.contentView.flex.define {
      FlexVStack($0, justifyContent: .start, alignItems: .start) {
        FlexItem($0, view: self.titleLabel)
        FlexSpacer($0, spacing: 24.0)
        FlexItem($0, view: self.descLabel)
        FlexSpacer($0, spacing: 12.0)
        FlexItem($0, view: self.infoLabel)
      }.margin(16.0)
    }
  }

  override func sizeThatFits(_ size: CGSize) -> CGSize {
    self.contentView.bounds.size.width = size.width
    self.contentView.flex.layout(mode: .adjustHeight)
    return self.contentView.bounds.size
  }
}
