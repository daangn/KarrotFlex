//
//  Flex+Extension.swift
//  KarrotFlex
//
//  Created by Geektree0101 on 2021/12/12.
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
