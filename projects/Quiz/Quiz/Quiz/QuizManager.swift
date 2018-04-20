//
//  QuizManager.swift
//  Quiz
//
//  Created by Olav on 20/04/2018.
//  Copyright © 2018 olaven. All rights reserved.
//

import Foundation

class QuizManager
{
    var quizes = [Quiz]()

    //add quiz
    func add(quiz : Quiz)
    {
        quizes.append(quiz)
    }
    
    //remove quiz
    func remove(quiz : Quiz)
    {
        //NOT IMPLEMENTED
    }
}
