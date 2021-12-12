import UIKit

import FlexLayout

// MARK: - Overlay

@discardableResult
public func FlexOverlay(_ flex: Flex, _ overlay: @escaping (Flex) -> Flex) -> Flex {
  return flex.define {
    overlay($0).position(.absolute)
  }
}

// MARK: - Ratio

@discardableResult
public func FlexRatio(_ flex: Flex, view: UIView, ratio: CGFloat) -> Flex {
  return flex
    .addItem(view)
    .aspectRatio(ratio)
}

@discardableResult
public func FlexRatio(_ flex: Flex, ratio: CGFloat) -> Flex {
  return flex
    .aspectRatio(ratio)
}
