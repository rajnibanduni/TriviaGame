//
//  AnswerModel.swift
//  TriviaGame
//
//  Created by Rajni Banduni on 17/03/25.
//

import Foundation

struct AnswerModel:Identifiable{
    var id = UUID()
    var text:AttributedString
    var isCorrect:Bool
    
}
