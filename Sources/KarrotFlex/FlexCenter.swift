//
//  FlexCenter.swift
//
//  Copyright (c) Danggeun Market, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

import UIKit

import FlexLayout

// MARK: - Center

public enum FlexCenterOption {
  case X
  case Y
  case XY
}

@discardableResult
public func FlexCenter(_ flex: Flex, option: FlexCenterOption, _ child: @escaping (Flex) -> Flex) -> Flex {
  switch option {
  case .X:
    return flex
      .addItem()
      .width(100%)
      .height(100%)
      .direction(.row)
      .justifyContent(.center)
      .define {
        // NOTE: discard result
        _ = child($0)
      }
  case .Y:
    return flex
      .addItem()
      .width(100%)
      .height(100%)
      .direction(.column)
      .justifyContent(.center)
      .define {
        // NOTE: discard result
        _ = child($0)
      }
  case .XY:
    return flex
      .addItem()
      .width(100%)
      .height(100%)
      .justifyContent(.center)
      .define {
        child($0).alignSelf(.center)
      }
  }
}

@discardableResult
public func FlexCenter(_ flex: Flex, option: FlexCenterOption, view: UIView) -> Flex {
  switch option {
  case .X:
    return flex
      .addItem()
      .width(100%)
      .height(100%)
      .direction(.row)
      .justifyContent(.center)
      .define {
        $0.addItem(view)
      }
  case .Y:
    return flex
      .addItem()
      .width(100%)
      .height(100%)
      .direction(.column)
      .justifyContent(.center)
      .define {
        $0.addItem(view)
      }
  case .XY:
    return flex
      .addItem()
      .width(100%)
      .height(100%)
      .justifyContent(.center)
      .define {
        $0.addItem(view).alignSelf(.center)
      }
  }
}
