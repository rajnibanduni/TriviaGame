//
//  TriviaView.swift
//  TriviaGame
//
//  Created by Rajni Banduni on 20/03/25.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager:TriviaManager

    var body: some View {
        if triviaManager.reachedEnd{
            VStack(spacing: 20, content: {
                Text("Trivia Game")
                    .textTitle()
                Text("Congratulations,You completed the game!🏆 ")
                    .foregroundStyle(Color("TextColor"))
                Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                
                Button{
                    Task.init{
                        await triviaManager.fetchTrivia()
                    }
                }label: {
                    PrimaryButton(text: "Play Again")
                }
            })
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Background"))
        }else{
            QuestionView()
                .environmentObject(triviaManager)
        }
        
    }
}

#Preview {
    TriviaView()
        .environmentObject(TriviaManager())
}
