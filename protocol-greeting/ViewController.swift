//
//  ViewController.swift
//  protocol-greeting
//
//  Created by yasudamasato on 2021/12/23.
//

import UIKit

protocol Language {
  func greeting() -> String
}

struct Japan: Language {
  func greeting() -> String {
    return "こんにちは"
  }
}

struct America: Language {
  func greeting() -> String {
    return "Hello"
  }
}

struct China: Language {
  func greeting() -> String {
    return "你好"
  }
}

struct France: Language {
  func greeting() -> String {
    return "Bonjour"
  }
}

final class ViewController: UIViewController {

  @IBOutlet private weak var segmentedControl: UISegmentedControl!
  @IBOutlet private weak var button: UIButton! {
    didSet {
      button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
    }
  }
  @IBOutlet private weak var label: UILabel!

  @objc private func didTapButton(_ sender: UIResponder) {
    switch segmentedControl.selectedSegmentIndex {
    case 0: label.text = Japan().greeting()
    case 1: label.text = America().greeting()
    case 2: label.text = China().greeting()
    case 3: label.text = France().greeting()
    default: break
    }
  }
}
