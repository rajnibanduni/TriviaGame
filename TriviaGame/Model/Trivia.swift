//
//  Trivia.swift
//  TriviaGame
//
//  Created by Rajni Banduni on 20/03/25.
//

import Foundation

struct Trivia:Decodable {
    var results:[Result]
    
    struct Result:Decodable , Identifiable {
        var id:UUID{
            UUID()
        }
        var category:String
        var type:String
        var difficulty:String
        var question:String
        var correctAnswer:String
        var incorrect_answers:[String]
        
        var formattedQuestion:AttributedString{
            do{
                return try AttributedString(markdown: question)
            }catch{
                print("Error setting formattedQuestion:\(error)")
                return ""
            }
        }
        
        var answer:[AnswerModel]{
            do {
                let correct = [AnswerModel(text: try AttributedString(markdown: correctAnswer), isCorrect: true)]
                let incorrect = try incorrect_answers.map { answer in
                    AnswerModel(text: try AttributedString(markdown: answer), isCorrect: false)
                }
                let allAnswer = correct + incorrect
                return allAnswer.shuffled()
            } catch {
                print("Error sorting answer:\(error)")
                return []
            }
        }
    }
}
