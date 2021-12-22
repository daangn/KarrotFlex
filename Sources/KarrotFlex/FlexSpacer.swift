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
  return flex.addItem().width(spacing).height(spacing)
}
