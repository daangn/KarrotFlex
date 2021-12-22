//
//  FlexItem.swift
//  KarrotFlex
//
//  Created by Geektree0101 on 2021/12/12.
//

import UIKit

import FlexLayout

@discardableResult
public func FlexItem(_ flex: Flex, view: UIView) -> Flex {
  flex.addItem(view)
  return view.flex
}
