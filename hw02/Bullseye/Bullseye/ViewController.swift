//
//  ViewController.swift
//  Bullseye
//
//  Created by Shiqi Zhang on 2022/2/14.
//

import UIKit
import Foundation

var randomNumber = 0
var range = 100
var level = 1
var historyHighScore = 0

class ViewController: UIViewController {

    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var numSlider: UISlider!
    @IBOutlet weak var exactSwitch: UISwitch!
    @IBOutlet weak var highScore: UILabel!
    @IBOutlet weak var currentLevel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var rangeLabel: UILabel!
    
    
    @IBAction func checkValue(_ sender: Any) {
        if exactSwitch.isOn == false {
            if randomNumber - 3 <= Int(numSlider.value) && randomNumber + 3 >= Int(numSlider.value) {
                resultLabel.text = "You were right on point! Bullseye!"
                
                range += 50
                rangeLabel.text = String(range)
                numSlider.maximumValue = Float(range)
                
                level += 1
                currentLevel.text = String(level)
                
                numSlider.setValue(Float(range / 2), animated: false)
                randomNumber = Int(arc4random_uniform(UInt32(range + 1)))
                numLabel.text = String(randomNumber)
                resultLabel.isHidden = true
            } else {
                playAgainButton.isHidden = false
                resultLabel.text = "Whoops! You missed! Try again later"
            }
        } else {
            if Int(numSlider.value) == randomNumber {
              resultLabel.text = "You were right on point! Bullseye!"
              
              range += 50
              rangeLabel.text = String(range)
              numSlider.maximumValue = Float(range)
              
              level += 1
              currentLevel.text = String(level)
              
              numSlider.setValue(Float(range / 2), animated: false)
              randomNumber = Int(arc4random_uniform(UInt32(range + 1)))
              numLabel.text = String(randomNumber)
              resultLabel.isHidden = true
            } else {
              playAgainButton.isHidden = false
              resultLabel.text = "Whoops! You missed! Try again later"
            }
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        numLabel.text = "\(Int(numSlider.value))"
    }
    
    @IBAction func playAgain(_ sender: Any) {
//        if Int(currentLevel.text) > Int(highScore.text) {
//          highScore.text = currentLevel.text
//        }
        
        
        numSlider.setValue(50.0, animated: false)
        randomNumber = Int(arc4random_uniform(101))
        numLabel.text = String(randomNumber)
        resultLabel.isHidden = true
        playAgainButton.isHidden = true
            
        range = 100
        rangeLabel.text = String(range)
        numSlider.maximumValue = Float(range)
            
        level = 1
        currentLevel.text = String(level)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomNumber = Int(arc4random_uniform(101))
        numLabel.text = String(randomNumber)
        
        rangeLabel.text = String(range)
        currentLevel.text = String(level)
        
        highScore.text = String(historyHighScore)
    }
}


