import UIKit

import FlexLayout

// MARK: - Spacer

@discardableResult
public func FlexSpacer(_ flex: Flex, width: CGFloat) -> Flex {
  return flex.addItem().width(width)
}

@discardableResult
public func FlexSpacer(_ flex: Flex, height: CGFloat) -> Flex {
  return flex.addItem().height(height)
}

// MARK: - Row

@discardableResult
public func FlexRow(_ flex: Flex, _ builder: @escaping (Flex) -> Void) -> Flex {
  return flex.addItem().direction(.row).define {
    builder($0)
  }
}

// MARK: - Column

@discardableResult
public func FlexColumn(_ flex: Flex, _ builder: @escaping (Flex) -> Void) -> Flex {
  return flex.addItem().direction(.column).define {
    builder($0)
  }
}

// MARK: - Item

@discardableResult
public func FlexItem(_ flex: Flex, view: UIView) -> Flex {
  return flex.addItem(view)
}

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

// MARK: - Inset

@discardableResult
public func FlexInset(_ flex: Flex, view: UIView, insets: UIEdgeInsets) -> Flex {
  return flex
    .addItem(view)
    .padding(insets)
}

@discardableResult
public func FlexInset(_ flex: Flex, view: UIView, all: CGFloat) -> Flex {
  return flex
    .addItem(view)
    .padding(all)
}

@discardableResult
public func FlexInset(_ flex: Flex, insets: UIEdgeInsets) -> Flex {
  return flex
    .padding(insets)
}

@discardableResult
public func FlexInset(_ flex: Flex, all: CGFloat) -> Flex {
  return flex
    .padding(all)
}

// MARK: - Center

public enum FlexCenterOption {
  case X
  case Y
  case XY
}

@discardableResult
public func FlexCenter(_ flex: Flex, option: FlexCenterOption, _ child: @escaping (Flex) -> Flex) -> Flex {
  switch option {
  case .X:
    return flex
      .addItem()
      .width(100%)
      .height(100%)
      .direction(.row)
      .justifyContent(.center)
      .define {
        // NOTE: discard result
        _ = child($0)
      }
  case .Y:
    return flex
      .addItem()
      .width(100%)
      .height(100%)
      .direction(.column)
      .justifyContent(.center)
      .define {
        // NOTE: discard result
        _ = child($0)
      }
  case .XY:
    return flex
      .addItem()
      .width(100%)
      .height(100%)
      .justifyContent(.center)
      .define {
        child($0).alignSelf(.center)
      }
  }
}

@discardableResult
public func FlexCenter(_ flex: Flex, option: FlexCenterOption, view: UIView) -> Flex {
  switch option {
  case .X:
    return flex
      .addItem()
      .width(100%)
      .height(100%)
      .direction(.row)
      .justifyContent(.center)
      .define {
        $0.addItem(view)
      }
  case .Y:
    return flex
      .addItem()
      .width(100%)
      .height(100%)
      .direction(.column)
      .justifyContent(.center)
      .define {
        $0.addItem(view)
      }
  case .XY:
    return flex
      .addItem()
      .width(100%)
      .height(100%)
      .justifyContent(.center)
      .define {
        $0.addItem(view).alignSelf(.center)
      }
  }
}
