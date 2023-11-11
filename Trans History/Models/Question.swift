//
//  Question.swift
//  Trans History
//
//  Created by Morgan Collado on 10/31/23.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
            Question(questionText: "What year was Street Transvestite Action Revolutionaries founded?", possibleAnswers: ["1970", "1972", "1974", "1976"], correctAnswerIndex: 0),
            Question(questionText: "What does the T stand for in LGBT?", possibleAnswers: ["Timothy", "Trolly", "Trangender", "Tiger"], correctAnswerIndex: 2),
            Question(questionText: "On what day does Trans Day of Remembrance usually take place?", possibleAnswers: ["June 3", "Nov 20", "Dec 24", "April 25"], correctAnswerIndex: 2),
    ]
}
