//
//  Flex+Extension.swift
//
//  Copyright (c) Danggeun Market, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

import Foundation

import FlexLayout

extension Flex {

  @discardableResult
  public func register(_ target: inout Flex?) -> Self {
    target = self
    return self
  }
}
