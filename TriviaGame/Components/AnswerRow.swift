//
//  AnswerRow.swift
//  TriviaGame
//
//  Created by Rajni Banduni on 17/03/25.
//

import SwiftUI

struct AnswerRow: View {

    @EnvironmentObject var triviaManager:TriviaManager
    var answer:AnswerModel
    @State private var isSelected:Bool = false
    var green = Color(hue: 0.437, saturation: 0.711, brightness: 0.711)
    var red = Color(red: 0.71, green: 0.094, blue: 0.1)

    var body: some View {
        HStack(spacing: 20, content: {
            Image(systemName: "circle.fill")
                .font(.caption)
            
            Text(answer.text)
                .bold()
            if isSelected{
                Spacer()
                Image(systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                    .foregroundStyle(answer.isCorrect ? green : red)
            }
        })
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(triviaManager.answerSelected ? (isSelected ? Color("TextColor") : .gray) : Color("TextColor"))

        .background(.white)
        .cornerRadius(10)
        .shadow(color:isSelected ?(answer.isCorrect ? green : red): .gray, radius: 5, x: 0.5, y: 0.5)
        .onTapGesture {
            if !triviaManager.answerSelected {
                isSelected = true
                triviaManager.selectAnswer(answer: answer)
            }
        }
    }
}

#Preview {
    AnswerRow(answer: AnswerModel(text: "Single", isCorrect: false))
        .environmentObject(TriviaManager())
}
