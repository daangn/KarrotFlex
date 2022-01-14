//
//  FlexItem.swift
//
//  Copyright (c) Danggeun Market, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

import UIKit

import FlexLayout

@discardableResult
public func FlexItem(_ flex: Flex, view: UIView) -> Flex {
  flex.addItem(view)
  return view.flex
}
