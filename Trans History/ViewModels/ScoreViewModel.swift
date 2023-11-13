//
//  ScoreViewModel.swift
//  Trans History
//
//  Created by Morgan Collado on 11/13/23.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
     let incorrectGuesses: Int

     var percentage: Int {
       (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
     }
}
