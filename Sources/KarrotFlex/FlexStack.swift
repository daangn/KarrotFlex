//
//  FlexStack.swift
//  KarrotFlex
//
//  Created by Geektree0101 on 2021/12/12.
//

import Foundation

import FlexLayout

public enum FlexStackDirection {
  case vertical
  case horizontal

  var rawValue: Flex.Direction {
    switch self {
    case .vertical:
      return .column
    case .horizontal:
      return .row
    }
  }
}

@discardableResult
public func FlexStack(_ flex: Flex,
                      direction: FlexStackDirection,
                      justifyContent: Flex.JustifyContent = .start,
                      alignItems: Flex.AlignItems = .start,
                      _ closure: @escaping (Flex) -> Void) -> Flex {
  flex.addItem()
    .direction(direction.rawValue)
    .justifyContent(justifyContent)
    .alignItems(alignItems)
    .define(closure)
}
