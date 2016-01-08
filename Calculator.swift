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
    
    @IBAction func addButton(sender: UIButton) {
       
        let numberOne = firstNumberTextField.text!
        let numberTwo = secondNumberTextField.text!
        
    }

}
