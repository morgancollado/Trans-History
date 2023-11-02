//
//  ChoiceTextView.swift
//  Trans History
//
//  Created by Morgan Collado on 10/31/23.
//

import Foundation
import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    let accentColor = Color(red: 245/255, green: 169/255, blue: 184/255)

    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .foregroundColor(.white)
            .background(accentColor)
            .clipShape(Capsule())
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice text!")
    }
}
