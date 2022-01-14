//
//  FlexOverlay.swift
//
//  Copyright (c) Danggeun Market, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

import Foundation

import FlexLayout

extension Flex {

  @discardableResult
  public func overlay(_ content: @escaping (Flex) -> Flex) -> Flex {
    self.define { _ = content($0) }
    self.view?.clipsToBounds = true
    return self
  }

  @discardableResult
  public func nonCilpsToBounds() -> Flex {
    self.view?.clipsToBounds = false
    return self
  }
}
