//
//  QuestionView.swift
//  TriviaGame
//
//  Created by Rajni Banduni on 17/03/25.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        VStack(spacing: 40, content: {
            HStack{
                Text("Trivia Game")
                    .textTitle()
                
                Spacer()
                
                Text("1 out of 10")
                    .textSubtitle()
            }
            ProgressBar(progress: 40)
            
            VStack(alignment:.leading, spacing: 20, content: {
                Text("Which country won the 2018 FIFA World Cup hosted in Russia?")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundStyle(.gray)
                
                AnswerRow(answer: AnswerModel(text: "false", isCorrect: true))
                AnswerRow(answer: AnswerModel(text: "true", isCorrect: false))
                
            })
            
            PrimaryButton(text: "Next")
            Spacer()
            
        })
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Background"))
        
    }
}

#Preview {
    QuestionView()
}
