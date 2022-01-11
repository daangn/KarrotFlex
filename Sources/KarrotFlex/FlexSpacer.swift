//
//  FlexSpacer.swift
//  KarrotFlex
//
//  Created by Geektree0101 on 2021/12/12.
//

import UIKit

import FlexLayout

@discardableResult
public func FlexSpacer(_ flex: Flex, spacing: CGFloat) -> Flex {
  let spacerFlex = flex.addItem()
  // UIView to 'hidden' saves it from being rendered and possibly increases performance
  spacerFlex.view?.isHidden = true
  return spacerFlex.width(spacing).height(spacing)
}
