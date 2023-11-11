//
//  WelcomeView.swift
//  Trans History
//
//  Created by Morgan Collado on 11/11/23.
//

import Foundation
import SwiftUI

struct WelcomeView: View {

    var body: some View {
        NavigationView {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Select the correct answers to the following questions.")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                    NavigationLink(
                        destination: QuestionView(),
                        label: {
                            BottomTextView(str: "Okay let's go!")
                        })
                }
                .foregroundColor(.black)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
