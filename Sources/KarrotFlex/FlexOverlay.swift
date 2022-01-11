//
//  FlexOverlay.swift
//  KarrotFlex
//
//  Created by Geektree0101 on 2021/12/12.
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
