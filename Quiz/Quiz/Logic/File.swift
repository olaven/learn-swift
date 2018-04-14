//
//  File.swift
//  Quiz
//
//  Created by Olav on 15/04/2018.
//  Copyright © 2018 olaven. All rights reserved.
//

import Foundation

class QuizManager{
    var quizes : [Quiz]
    
    init() {
        quizes = [Quiz]()
    }
    
    func add(quiz : Quiz){
        quizes.append(quiz)
    }
    
    func remove(quiz : Quiz){
        quizes = quizes.filter(){$0 !== quiz}
    }
}
