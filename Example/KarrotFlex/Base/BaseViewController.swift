//
//  BaseViewController.swift
//  KarrotFlex
//
//  Created by Geektree0101 on 2021/12/12.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController<View: UIView>: UIViewController {

  let body: View

  convenience init() {
    self.init(view: View())
  }

  init(view: View) {
    self.body = view
    super.init(nibName: nil, bundle: nil)
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func loadView() {
    self.view = self.body
  }
  
}
