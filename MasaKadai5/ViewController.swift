//
//  ViewController.swift
//  MasaKadai5
//
//  Created by Mina on 2022/12/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var letfInputNumberTextFiled: UITextField!
    @IBOutlet private weak var rightInputNumberTextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    private func alert(message: String) {
        let alert = UIAlertController(title: "課題5",
                                      message: message,
                                      preferredStyle: .alert)

        let okBtn = UIAlertAction(title: "OK", style: .default)

        alert.addAction(okBtn)
        present(alert, animated: true)
    }

    @IBAction private func calculationButton(_ sender: Any) {
        let numberInput1 = Float(letfInputNumberTextFiled.text ?? "") ?? 0
        let numberInput2 = Float(rightInputNumberTextField.text ?? "") ?? 0

        if letfInputNumberTextFiled.text == "" {
            alert(message: "割られる数を入力して下さい")
        } else if rightInputNumberTextField.text == "" {
            alert(message: "割る数を入力して下さい")
        } else if numberInput2 == 0 {
            alert(message: "割る数には0を入力しないで下さい")
        } else {
            resultLabel.text = String(numberInput1 / numberInput2)
        }
    }
}
