//
//  FlexAnimationViewController.swift
//  KarrotFlex
//
//  Created by Geektree0101 on 2021/12/12.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

import KarrotFlex

// MARK: - view

final class FlexAnimationView: UIView {

  private enum Typo {

    static let title: UIFont = UIFont.boldSystemFont(ofSize: 24.0)
    static let largeTitle: UIFont = UIFont.boldSystemFont(ofSize: 48.0)
    static let desc: UIFont = UIFont.systemFont(ofSize: 16.0)
    static let largeDesc: UIFont = UIFont.systemFont(ofSize: 32.0)
  }

  private enum Metric {
    static let daangniImageSize = CGSize(width: 80.0, height: 80.0)
    static let largeDaangniImageSize = CGSize(width: 140.0, height: 140.0)
  }

  private let daangniImageView = UIImageView()

  private let titleLabel = UILabel()
  private let descLabel = UILabel()

  private let animateButton = UIButton()

  // MARK: - Prop
  var isContentStackHorizontal: Bool = true
  var contentStackFlex: Flex?

  init() {
    super.init(frame: .zero)
    self.backgroundColor = .white
    self.setupUI()
    self.define()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  private func setupUI() {
    self.daangniImageView.image = UIImage(named: "daangnbot")
    self.daangniImageView.clipsToBounds = true

    self.titleLabel.text = "Daangni"
    self.titleLabel.numberOfLines = 0
    self.titleLabel.font = Typo.title

    self.descLabel.text = "Daangni is the neighborhood dog near you."
    self.descLabel.numberOfLines = 0
    self.descLabel.font = Typo.desc

    self.animateButton.setTitle("Animate", for: .normal)
    self.animateButton.setTitleColor(.white, for: .normal)
    self.animateButton.backgroundColor = .systemBlue
    self.animateButton.addTarget(self, action: #selector(didTapAnimateButton), for: .touchUpInside)
  }

  private func define() {
    self.flex.define {
      FlexVStack($0, justifyContent: .spaceBetween, alignItems: .stretch) {
        FlexSpacer($0, spacing: 16.0).grow(1.0)
        FlexStack($0, direction: .horizontal, justifyContent: .start, alignItems: .center) {
          FlexItem($0, view: self.daangniImageView).size(Metric.daangniImageSize)
          FlexSpacer($0, spacing: 24.0)
          FlexVStack($0, justifyContent: .start, alignItems: .stretch) {
            FlexItem($0, view: self.titleLabel)
            FlexSpacer($0, spacing: 8.0)
            FlexItem($0, view: self.descLabel)
          }.shrink(1.0)
        }
        .margin(16.0)
        .register(&self.contentStackFlex)
        FlexSpacer($0, spacing: 16.0).grow(1.0)
        FlexItem($0, view: self.animateButton)
          .marginHorizontal(16.0)
          .height(48.0)
      }
      .height(100%)
    }
  }

  override func safeAreaInsetsDidChange() {
    super.safeAreaInsetsDidChange()
    self.flex.padding(self.safeAreaInsets)
    self.setNeedsLayout()
  }

  @objc private func didTapAnimateButton() {
    self.isContentStackHorizontal.toggle()
    if self.isContentStackHorizontal {
      self.titleLabel.font = Typo.title
      self.titleLabel.textAlignment = .natural
      self.titleLabel.flex.markDirty()

      self.descLabel.font = Typo.desc
      self.descLabel.textAlignment = .natural
      self.descLabel.flex.markDirty()

      self.daangniImageView.flex.size(Metric.daangniImageSize)
      self.daangniImageView.flex.markDirty()

      self.contentStackFlex?.direction(.row)
    } else {
      self.titleLabel.font = Typo.largeTitle
      self.titleLabel.textAlignment = .center
      self.titleLabel.flex.markDirty()

      self.descLabel.font = Typo.largeDesc
      self.descLabel.textAlignment = .center
      self.descLabel.flex.markDirty()

      self.daangniImageView.flex.size(Metric.largeDaangniImageSize)
      self.daangniImageView.flex.markDirty()

      self.contentStackFlex?.direction(.column)
    }

    self.setNeedsLayout()
    UIView.animate(withDuration: 1.0, animations: {
      self.layoutIfNeeded()
    })
  }

  override func layoutSubviews() {
    super.layoutSubviews()
    if self.isContentStackHorizontal {
      self.daangniImageView.layer.cornerRadius = Metric.daangniImageSize.height * 0.5
    } else {
      self.daangniImageView.layer.cornerRadius = Metric.largeDaangniImageSize.height * 0.5
    }
    self.animateButton.layer.cornerRadius = 8.0
    self.flex.layout(mode: .fitContainer)
  }

}

// MARK: - controller

final class FlexAnimationViewController: BaseViewController<FlexAnimationView> {

  override func viewDidLoad() {
    super.viewDidLoad()
  }
}
