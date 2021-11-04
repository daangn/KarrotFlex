import XCTest
import KarrotFlex
import FBSnapshotTestCase

final class FlexCenterTests: KarrotFlexSnapshotTestCase {

  private let boxView: UIView = {
    let view = UIView()
    view.backgroundColor = .red
    return view
  }()

  func test_center_XY() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexCenter(flex, option: .XY) { center in
        FlexItem(center, view: self.boxView).size(100.0)
      }
    }

    self.verify()
  }

  func test_center_X() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexCenter(flex, option: .X) { center in
        FlexItem(center, view: self.boxView).size(100.0)
      }
    }

    self.verify()
  }

  func test_center_Y() {
    self.testDefine(parentSize: CGSize(width: 500, height: 500)) { flex in
      FlexCenter(flex, option: .Y) { center in
        FlexItem(center, view: self.boxView).size(100.0)
      }
    }

    self.verify()
  }
}
