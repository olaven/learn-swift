//
//  Quiz.swift
//  Quiz
//
//  Created by Olav on 20/04/2018.
//  Copyright © 2018 olaven. All rights reserved.
//

import Foundation

class Quiz
{
    var quiz : [Question]
    
    init() {
        quiz = [Question]()
    }
    
    func add(question : Question) -> Bool
    {
        if(!quiz.contains(question)){
            quiz.append(question)
            return true
        }
        return false
    }
    
}

