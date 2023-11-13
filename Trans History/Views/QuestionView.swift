//
//  QuestionView.swift
//  Trans History
//
//  Created by Morgan Collado on 11/11/23.
//

import SwiftUI

struct QuestionView: View {
    
  @EnvironmentObject var viewModel: GameViewModel
  let question: Question
  
  var body: some View {
    VStack {
      Spacer()
      Text(question.questionText)
        .font(.largeTitle)
        .bold()
        .multilineTextAlignment(.leading)
      Spacer()
      HStack {
        ForEach(0..<question.possibleAnswers.count) { answerIndex in
          Button(action: {
              viewModel.makeGuess(atIndex: answerIndex)
          }) {
            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                  .background(viewModel.color(forOptionIndex: answerIndex))
                  .clipShape(Capsule())
          }
        }
      }
    }
      if viewModel.guessWasMade {
               Button(action: { viewModel.displayNextScreen() }) {
                   BottomTextView(str: "Next")
               }
           }
  }
}
