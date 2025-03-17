//
//  ContentView.swift
//  TriviaGame
//
//  Created by Rajni Banduni on 15/03/25.
//

import SwiftUI

struct ContentView: View {
//    var titel:String
//    var subTitle:String
//    var button:UIButton
//
    var body: some View {
        VStack(spacing: 40, content: {
            VStack(spacing: 20, content: {
                Text("Trivia Game")
                    .textTitle()
                Text("Are you ready to test out your trivia skills")
                    .textSubtitle()
            })
            PrimaryButton(text: "Next")
            
        })
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
        .background(Color("Background"))
    }
}

#Preview {
    ContentView()
}
