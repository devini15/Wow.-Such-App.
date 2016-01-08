//
//  Calculator.swift
//  WOW.
//
//  Created by Devin on 1/7/16.
//  Copyright © 2016 Devin. All rights reserved.
//

import UIKit

class Calculator: ViewController {
    
    @IBOutlet weak var firstNumberTextField: UITextField!
    @IBOutlet weak var secondNumberTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var opperaterImageView: UIImageView!
    @IBOutlet weak var remainderLabel: UILabel!
    @IBOutlet weak var devideByZeroErrorLabel: UILabel!
    
    @IBAction func addButton(sender: UIButton) {
       
        let number1 = Int(firstNumberTextField.text!)
        let number2 = Int(secondNumberTextField.text!)
        let sum = Int(number1! + number2!)
        opperaterImageView.image = UIImage(named: "+")
        answerLabel.text = "\(sum)"
        remainderLabel.text = ""

        
        
    }
    
    @IBAction func subtractButton(sender: UIButton) {
        let number1 = Int(firstNumberTextField.text!)
        let number2 = Int(secondNumberTextField.text!)
        let minus = Int(number1! - number2!)
        opperaterImageView.image = UIImage(named: "-0")
        answerLabel.text = "\(minus)"
        remainderLabel.text = ""

    }

    @IBAction func multiplyButton(sender: UIButton) {
        let number1 = Int(firstNumberTextField.text!)
        let number2 = Int(secondNumberTextField.text!)
        let product = Int(number1! * number2!)
        opperaterImageView.image = UIImage(named: "X")
        answerLabel.text = "\(product)"
        remainderLabel.text = ""

    }
    
    @IBAction func devideButton(sender: UIButton) {
    
    
        let number1 = Int(firstNumberTextField.text!)
        let number2 = Int(secondNumberTextField.text!)
        if number2 == 0
        {
            secondNumberTextField.text = "1"
            let number2 = 1
            devideByZeroErrorLabel.text = "NOPE"
            let devideThing = Int(number1! / number2)
            let remainder = Int(number1! % number2)
            opperaterImageView.image = UIImage(named: "÷")
            answerLabel.text = "\(devideThing)"
            remainderLabel.text = "R = \(remainder)"
        }
        else {
            devideByZeroErrorLabel.text = ""
            let devideThing = Int(number1! / number2!)
            let remainder = Int(number1! % number2!)
            opperaterImageView.image = UIImage(named: "÷")
            answerLabel.text = "\(devideThing)"
            remainderLabel.text = "R = \(remainder)"
        }
            
    }
    

}
