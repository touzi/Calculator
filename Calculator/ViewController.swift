//
//  ViewController.swift
//  Calculator
//
//  Created by touzi on 15/10/9.
//  Copyright © 2015年 touzi. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingANumber : Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingANumber {
            display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    @IBAction func enter() {
        userIsInTheMiddleOfTypingANumber = false
    }
}

