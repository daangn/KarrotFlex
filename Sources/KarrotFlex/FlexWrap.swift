//
//  FlexWrap.swift
//
//  Copyright (c) Danggeun Market, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

import UIKit

public enum FlexWrapDirection {
  case vertical
  case horizontal
}

@discardableResult
public func FlexWrap(_ flex: Flex,
                     direction: FlexWrapDirection,
                     children: [UIView],
                     childDefine: ((Flex) -> Void)? = nil) -> Flex {
  switch direction {
  case .horizontal:
    return FlexHStack(flex) { flex in
      children.forEach { child in
        childDefine?(child.flex)
        FlexItem(flex, view: child)
      }
    }.wrap(.wrap)
  case .vertical:
    return FlexVStack(flex) { flex in
      children.forEach { child in
        childDefine?(child.flex)
        FlexItem(flex, view: child)
      }
    }.wrap(.wrap)
  }
}
