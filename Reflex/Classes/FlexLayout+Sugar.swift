import FlexLayout

// MARK: - Spacer

@discardableResult
func FlexSpacer(_ flex: Flex, width: CGFloat) -> Flex {
  return flex.addItem().width(width)
}

@discardableResult
func FlexSpacer(_ flex: Flex, height: CGFloat) -> Flex {
  return flex.addItem().height(height)
}

// MARK: - Row

@discardableResult
func FlexRow(_ flex: Flex, _ builder: @escaping (Flex) -> Void) -> Flex {
  return flex.addItem().direction(.row).define {
    builder($0)
  }
}

// MARK: - Column

@discardableResult
func FlexColumn(_ flex: Flex, _ builder: @escaping (Flex) -> Void) -> Flex {
  return flex.addItem().direction(.column).define {
    builder($0)
  }
}

// MARK: - Item

@discardableResult
func FlexItem(_ flex: Flex, view: UIView) -> Flex {
  return flex.addItem(view)
}

// MARK: - Overlay

@discardableResult
func FlexOverlay(_ flex: Flex, _ overlay: @escaping (Flex) -> Void) -> Flex {
  return flex.define(overlay)
}
