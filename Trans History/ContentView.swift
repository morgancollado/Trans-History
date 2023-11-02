//
//  ContentView.swift
//  Trans History
//
//  Created by Morgan Collado on 10/25/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    @State private var selectedValue = 0
    
    let question = Question(questionText: "What year was Street Transvestite Action Revolutionaries founded?", possibleAnswers: ["1970", "1972", "1974", "1976"], correctAnswerIndex: 0)
    
    let mainColor = Color(red: 91/255, green: 206/255, blue: 250/255)
    var body: some View {
        ZStack{
            mainColor.ignoresSafeArea()
            VStack {
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                HStack {
                    ForEach(0..<question.possibleAnswers.count) { answerIndex in
                        Button(action: {
                            print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                             showingSheet.toggle()
                             selectedValue = answerIndex
                          }, label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                          })
                    }
                }
            }
        }
        .sheet(isPresented: $showingSheet, content: {
            Text(selectedValue == question.correctAnswerIndex ? "correct" : "incorrect")
            Button(action: {
                showingSheet.toggle()
            }, label: {
                ChoiceTextView(choiceText: "dismiss")
            })
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
