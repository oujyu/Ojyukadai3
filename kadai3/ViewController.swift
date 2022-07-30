//
//  ViewController.swift
//  kadai3
//
//  Created by 松村直樹 on 2022/07/20.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet private weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!

    @IBOutlet private weak var leftLabel: UILabel!
    @IBOutlet private weak var rightLabel: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private weak var secondSwitch: UISwitch!
    @IBOutlet private weak var firstSwitch: UISwitch!

    @IBAction private func plusButton(_ sender: Any) {
        let firstNumber: Int
        let secondNumber: Int
        let answerNumber: Int

        let firstValue = Int(firstTextField.text ?? "") ?? 0
        let secondValue = Int(secondTextField.text ?? "") ?? 0

        if firstSwitch.isOn {
            firstNumber = -firstValue
        } else {
            firstNumber = firstValue
        }
        if secondSwitch.isOn {
            secondNumber = -secondValue
        } else {
            secondNumber = secondValue
        }

        leftLabel.text = "\(firstNumber)"
        rightLabel.text = "\(secondNumber)"
        answerNumber = firstNumber + secondNumber
        resultLabel.text = "\(answerNumber)"
    }
}
