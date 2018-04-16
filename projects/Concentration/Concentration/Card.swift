//
//  Card.swift
//  Concentration
//
//  Created by Olav on 15/04/2018.
//  Copyright © 2018 olaven. All rights reserved.
//

import Foundation

struct Card
{
    var isFacedUp = false
    var isMatched = false
    var identifier : Int
    
    /*
        static => understood by the Type Card, not Card objects
        Exists for the type, independent of objects
    */
    static var identifierFactory = 0
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
