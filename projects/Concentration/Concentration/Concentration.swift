//
//  Concentration.swift
//  Concentration
//
//  Created by Olav on 15/04/2018.
//  Copyright © 2018 olaven. All rights reserved.
//

import Foundation

class Consentration
{
    var cards : [Card] = [Card]()
    
    var indexOfOneAndOnlyFacedUpCard : Int?
    
    init(numberOfPairsOfCards pairCount : Int) {
        for _ in 0..<pairCount {
            let card = Card()
            cards += [card, card]//structs are copied => these are not the same
        }
    }
    
    
    func chooseCard(at index : Int){
        if !cards[index].isMatched{
            if let matchIndex = indexOfOneAndOnlyFacedUpCard, matchIndex != index{
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFacedUp = true
                indexOfOneAndOnlyFacedUpCard = nil
            } else {
                for flipDownIndex in cards.indices{
                    cards[flipDownIndex].isFacedUp = false
                }
                cards[index].isFacedUp = true
                indexOfOneAndOnlyFacedUpCard = index
            }
        }
    }
}
