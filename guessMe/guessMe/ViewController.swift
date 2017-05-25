//
//  ViewController.swift
//  guessMe
//
//  Created by Dayakar Reddy Marri on 5/25/17.
//  Copyright © 2017 dhaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var guessMeLabel: UILabel!
    
    @IBOutlet weak var enterNum: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func guessButton(_ sender: UIButton) {
        let guessNum = RandomNum().random()
        
        let userGuess = Int(enterNum.text!)
        if userGuess != nil {
        if userGuess! <= 10  && userGuess! >= 1 {
            if enterNum.text == String(guessNum){
                playSoundWhenCorrect()
                resultLabel.text = "You are right !!"
                
            } else {
                playSoundWhenWrong()
                resultLabel.text = "You are wrong! Try again"
                enterNum.text = ""
                
                
            }
            
        } else {
            resultLabel.text = "Please enter a valid number"
            
        }
        }
        else {
            resultLabel.text = "Please enter a number"
        }
    }
}
