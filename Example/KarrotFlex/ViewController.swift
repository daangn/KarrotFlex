//
//  ViewController.swift
//  KarrotFlex
//
//  Created by Geektree0101 on 11/01/2021.
//  Copyright (c) 2021 Geektree0101. All rights reserved.
//

import UIKit

import KarrotFlex

enum ShowCaseCellKind: Int, CaseIterable {
  case flexVStackCell
  case flexCenterCell

  var cellClass: AnyClass {
    switch self {
    case .flexVStackCell:
      return FlexVStackCell.self
    case .flexCenterCell:
      return FlexCenterCell.self
    }
  }

  var identifier: String {
    return "\(self.rawValue)"
  }

  func deq<T: UITableViewCell>(tableView: UITableView, for indexPath: IndexPath) -> T {
    return tableView.dequeueReusableCell(withIdentifier: self.identifier, for: indexPath) as! T
  }
}

class ShowCaseViewController: UIViewController {

  private var tableView: UITableView {
    return self.view as! UITableView
  }

  override func loadView() {
    let tableView = UITableView(frame: .zero)
    tableView.dataSource = self
    tableView.delegate = self
    ShowCaseCellKind.allCases.forEach {
      tableView.register($0.cellClass, forCellReuseIdentifier: $0.identifier)
    }
    self.view = tableView
  }
}

// MARK: - UITableViewDataSource

extension ShowCaseViewController: UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return ShowCaseCellKind.allCases.count
  }

  func tableView(_ tableView: UITableView,
                 cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let kind = ShowCaseCellKind(rawValue: indexPath.row) else { return UITableViewCell() }

    switch kind {
    case .flexVStackCell:
      let cell: FlexVStackCell = kind.deq(tableView: tableView, for: indexPath)
      cell.selectionStyle = .none
      return cell
    case .flexCenterCell:
      let cell: FlexCenterCell = kind.deq(tableView: tableView, for: indexPath)
      cell.selectionStyle = .none
      return cell
    }
  }
}

extension ShowCaseViewController: UITableViewDelegate {

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
  }
}
