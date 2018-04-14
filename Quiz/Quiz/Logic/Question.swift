//
//  Question.swift
//  Quiz
//
//  Created by Olav on 14/04/2018.
//  Copyright © 2018 olaven. All rights reserved.
//

import Foundation

 class Question {
    var text : String;
    var answer : String;
    
    init(text : String, answer : String){
        self.text = text;
        self.answer = answer;
    }
    
    //get
    func getText() -> String{
        return text;
    }
    func getAnswer() -> String{
        return answer;
    }
    //set
    func setText(text : String){
        self.text = text;
    }
    func setAnswer(answer : String){
        self.answer = answer;
    }
}


