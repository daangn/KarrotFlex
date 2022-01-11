//
//  ShowCaseCellKind.swift
//  KarrotFlex_Example
//
//  Created by Geektree0101 on 2021/12/13.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

enum ShowCaseCellKind: Int, CaseIterable {
  case flexVStackCell
  case flexCenterCell
  case flexAnimationCell
  case flexWrapCell

  var cellClass: AnyClass {
    switch self {
    case .flexVStackCell:
      return FlexVStackCell.self
    case .flexCenterCell:
      return FlexCenterCell.self
    case .flexAnimationCell:
      return FlexAnimationCell.self
    case .flexWrapCell:
      return FlexWrapCell.self
    }
  }

  var identifier: String {
    return "\(self.rawValue)"
  }

  func deq<T: UITableViewCell>(tableView: UITableView, for indexPath: IndexPath) -> T {
    return tableView.dequeueReusableCell(withIdentifier: self.identifier, for: indexPath) as! T
  }
}
