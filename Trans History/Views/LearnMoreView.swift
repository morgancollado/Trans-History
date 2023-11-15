//
//  LearnMoreView.swift
//  Trans History
//
//  Created by Morgan Collado on 11/13/23.
//

import SwiftUI

struct LearnMoreView: View {
    let learnMoreText: String
    
    var body: some View {
        Text(learnMoreText)
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(GameColor.accent)
    }
}

struct LearnMoreView_Previews: PreviewProvider {
    static var previews: some View {
        LearnMoreView(learnMoreText: "Learning more already" )
    }
}
