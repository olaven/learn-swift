//
//  ViewController.swift
//  Concentration
//
//  Created by Olav on 15/04/2018.
//  Copyright © 2018 olaven. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount : Int = 0 {
        didSet{
            //runs every time the flipcount is set
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    var emojiChoices = ["🎃", "👻", "🎃", "👻", "🦇", "🦇"]
    
    @IBAction func touchCard(_ sender: UIButton){
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("You forgot to add this card!")
        }
        
        
    }
    
    //whenCalled    Inside Method
    //(externalName internalName : Type)
    func flipCard(withEmoji emoji : String, on button : UIButton){
        if(button.currentTitle == emoji){
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.8703516722, blue: 0.2306161225, alpha: 1);
        } else {
            button.setTitle(emoji, for : UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.8703516722, blue: 0.2306161225, alpha: 1);
        }
    }
    
}


