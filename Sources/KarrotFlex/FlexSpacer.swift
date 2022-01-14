//
//  FlexSpacer.swift
//
//  Copyright (c) Danggeun Market, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
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
