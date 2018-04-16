//
//  Quiz.swift
//  Quiz
//
//  Created by Olav on 14/04/2018.
//  Copyright © 2018 olaven. All rights reserved.
//


import Foundation

class Quiz{
    
    var quiz : [Question]
    var currentIndex : Int
    
    init() {
        quiz = [Question]()
        currentIndex = 0
        populateWithTestQuestions();
    }
    
    func populateWithTestQuestions() {
        for i in 1...10 {
            let text : String = "Test: Please type the number " + String(i)
            let answer : String = String(i)
            quiz.append(Question(text : text, answer : answer))
        }
    }
    
    /*
     Moves to next index
     Returns true if incremented, false if not
    */
    func toNextQuestion() -> Bool{
        if(currentIndex >= quiz.endIndex){
            return false;
        } else {
            currentIndex += 1;
            return true;
        }
    }
    
    /*
    Returns the current question
    */
    func getCurrentQuestion() -> Question{
        return quiz[currentIndex]
    }
     
    /*
     Add a question to the quiz
     Returns true if added, false if not
    */
    func add(question : Question) -> Bool {
        //RETURNING FALSE NOT IMPLEMENTED
        if(quiz.contains() {$0 === question}){
            return false
        }
        quiz.append(question)
        return true
    }
    
    /*
     Remove a question from the quiz
    */
    func remove(question : Question){
        quiz = quiz.filter() {$0 !== question}
    }
    
}
