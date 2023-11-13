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
    let learnMoreText: String
    
    static var allQuestions = [
            Question(questionText: "What year was Street Transvestite Action Revolutionaries founded?", possibleAnswers: ["1970", "1972", "1974", "1976"], correctAnswerIndex: 0, learnMoreText: "STAR was able to purchase a house that they used to shelter homeless queer and trans youth."),
            Question(questionText: "What does the T stand for in LGBT?", possibleAnswers: ["Timothy", "Trolly", "Trans", "Tiger"], correctAnswerIndex: 2, learnMoreText: "Trans is short of transgender which is an umbrella term for anyone who does not identify with the sex they were assigned at birth."),
            Question(questionText: "On what day does Trans Day of Remembrance usually take place?", possibleAnswers: ["June 3", "Nov 20", "Dec 24", "April 25"], correctAnswerIndex: 1, learnMoreText: "TDOR was originally founded to memorialize Rita Hester, a trans woman who was murdered in 1999."),
    ]
}
