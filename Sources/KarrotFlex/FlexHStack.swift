//
//  FlexHStack.swift
//  KarrotFlex
//
//  Created by Geektree0101 on 2021/12/12.
//

import Foundation

import FlexLayout

@discardableResult
public func FlexHStack(_ flex: Flex,
                       justifyContent: Flex.JustifyContent = .start,
                       alignItems: Flex.AlignItems = .start,
                       _ closure: @escaping (Flex) -> Void) -> Flex {
  flex.addItem()
    .direction(.row)
    .justifyContent(justifyContent)
    .alignItems(alignItems)
    .define(closure)
}
