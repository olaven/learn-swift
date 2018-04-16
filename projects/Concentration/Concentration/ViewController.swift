//
//  ViewController.swift
//  Concentration
//
//  Created by Olav on 15/04/2018.
//  Copyright © 2018 olaven. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //'lazy' => does not initialize before used
    lazy var game : Consentration = Consentration(numberOfPairsOfCards : cardButtons.count)// <- THE MODEL
    
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
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        } else {
            print("You forgot to add this card!")
        }
    }
    
    func updateViewFromModel(){
        for index in cardButtons.indices{
            let button = cardButtons[index]
            let card = game.cards[index]
            
            if(card.isFacedUp){
                button.setTitle(emoji(for : card), for : UIControlState.normal)
                button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            } else {
                button.setTitle("", for: UIControlState.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1) : #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            }
        }
    }
    
    var emoji  = [Int:String]() //Dictionary<Int, String>()
    func emoji(for card : Card) -> String {
        /*
        if emoji[card.identifier] != nil {
            return emoji[card.identifier]
        }
        return "?"
        */
        
        if emoji[card.identifier] == nil{
            if emojiChoices.count > 0 {
                let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
                emoji[card.identifier] = emojiChoices.remove(at: randomIndex)
            }
        }
        
        return emoji[card.identifier] ?? "?" //if nil
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


