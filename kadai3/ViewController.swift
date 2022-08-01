//
//  ViewController.swift
//  kadai3
//
//  Created by 松村直樹 on 2022/07/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!

    @IBOutlet private weak var leftLabel: UILabel!
    @IBOutlet private weak var rightLabel: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private weak var secondSwitch: UISwitch!
    @IBOutlet private weak var firstSwitch: UISwitch!

    @IBAction private func plusButton(_ sender: Any) {
        let firstValue = Int(firstTextField.text ?? "") ?? 0
        let secondValue = Int(secondTextField.text ?? "") ?? 0

        let firstNumber: Int
        if firstSwitch.isOn {
            firstNumber = -firstValue
        } else {
            firstNumber = firstValue
        }

        let secondNumber: Int
        if secondSwitch.isOn {
            secondNumber = -secondValue
        } else {
            secondNumber = secondValue
        }

        leftLabel.text = "\(firstNumber)"
        rightLabel.text = "\(secondNumber)"
        let answerNumber = firstNumber + secondNumber
        resultLabel.text = "\(answerNumber)"
    }
}
