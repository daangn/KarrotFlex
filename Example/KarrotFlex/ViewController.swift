//
//  ViewController.swift
//  KarrotFlex
//
//  Created by Geektree0101 on 11/01/2021.
//  Copyright (c) 2021 Geektree0101. All rights reserved.
//

import UIKit
import KarrotFlex

class ViewController: UIViewController {

  private var ableView: UITableView {
    return self.view as! UITableView
  }

  override func loadView() {
    let tableView = UITableView(frame: .zero)
    tableView.dataSource = self
    tableView.delegate = self
    tableView.register(Cell.self, forCellReuseIdentifier: Cell.identifier)
    self.view = tableView
  }
}

// MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 100
  }

  func tableView(_ tableView: UITableView,
                 cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: Cell.identifier, for: indexPath) as! Cell
    cell.configure(indexPath: indexPath)
    return cell
  }
}

// MARK: - UITableViewDelegate

extension ViewController: UITableViewDelegate {

  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 80.0
  }
}

final class Cell: UITableViewCell {

  static let identifier = "cell"

  private let titleLabel: UILabel = {
    let label = UILabel()
    label.font = UIFont.boldSystemFont(ofSize: 24.0)
    return label
  }()

  private let descLabel: UILabel = {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 16.0)
    label.textColor = UIColor.darkGray
    return label
  }()

  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.defineLayout()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func prepareForReuse() {
    super.prepareForReuse()
    self.titleLabel.text = nil
    self.descLabel.text = nil
  }

  func configure(indexPath: IndexPath) {
    self.titleLabel.text = "Title: \(indexPath.row)"
    self.descLabel.text = "description: section => \(indexPath.section), row => \(indexPath.row)"
  }

  override func layoutSubviews() {
    super.layoutSubviews()
    self.contentView.flex.layout(mode: .adjustHeight)
  }

  private func defineLayout() {
    self.contentView.flex.define { content in
      FlexColumn(content) { row in
        FlexItem(row, view: self.titleLabel)
        FlexSpacer(row, height: 8.0)
        FlexItem(row, view: self.descLabel)
      }
      .padding(16.0)
    }
  }
}
