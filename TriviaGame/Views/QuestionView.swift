//
//  QuestionView.swift
//  TriviaGame
//
//  Created by Rajni Banduni on 17/03/25.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var triviaManager:TriviaManager
    
    var body: some View {
        VStack(spacing: 40, content: {
            HStack{
                Text("Trivia Game")
                    .textTitle()
                
                Spacer()
                
                Text("\(triviaManager.index + 1) out of \(triviaManager.length)")
                    .textSubtitle()
            }
            ProgressBar(progress: triviaManager.progress)
            
            VStack(alignment:.leading, spacing: 20, content: {
                Text(triviaManager.question)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundStyle(.gray)
                
                ForEach(triviaManager.answerChoices, id: \.id){answer in
                    AnswerRow(answer: answer)
                        .environmentObject(triviaManager)
                }
                
            })
            
            Button{
                triviaManager.goToNextQuestion()
            } label: {
                PrimaryButton(text: "Next", background: triviaManager.answerSelected ? Color("TextColor") : Color(UIColor(hue: 1.0, saturation: 0.0, brightness: 0.564, alpha: 0.327)))
            }
            .disabled(!triviaManager.answerSelected)
            Spacer()
            
        })
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Background"))
        .navigationBarBackButtonHidden()
        
    }
}

#Preview {
    QuestionView()
        .environmentObject(TriviaManager())
}
