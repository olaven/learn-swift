//
//  Question.swift
//  Quiz
//
//  Created by Olav on 20/04/2018.
//  Copyright © 2018 olaven. All rights reserved.
//

import Foundation

class Question : Equatable
{
    var text : String
    var answer : String
    
    init(ask text : String, answer : String)
    {
        self.text = text
        self.answer = answer
    }
    
    static func == (left : Question, right : Question) -> Bool
    {
        return
            left.text == right.text &&
            left.answer == right.answer
    }
}

