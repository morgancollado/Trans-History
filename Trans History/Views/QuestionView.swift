//
//  QuestionView.swift
//  Trans History
//
//  Created by Morgan Collado on 11/11/23.
//

import SwiftUI

struct QuestionView: View {
    
  @State private var isSheetPresented = false
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
        if viewModel.guessWasMade {
                Button(action: {
                  isSheetPresented.toggle()
                }) {
                  Text("Learn more")
                }
                .sheet(isPresented: $isSheetPresented) {
                  // Your sheet content goes here
                    LearnMoreView(learnMoreText: question.learnMoreText)
                }
              }
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

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        let question = Question(questionText: "What year was Street Transvestite Action Revolutionaries founded?", possibleAnswers: ["1970", "1972", "1974", "1976"], correctAnswerIndex: 0, learnMoreText: "STAR was able to purchase a house that they used to shelter homeless queer and trans youth.")
        let viewModel = GameViewModel() // Initialize your GameViewModel here if needed

        return QuestionView(question: question)
            .environmentObject(viewModel)
    }
}
