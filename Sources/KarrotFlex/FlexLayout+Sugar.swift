import UIKit

import FlexLayout

// MARK: - Overlay

@discardableResult
public func FlexOverlay(_ flex: Flex, _ overlay: @escaping (Flex) -> Flex) -> Flex {
  return flex.define {
    overlay($0).position(.absolute)
  }
}
