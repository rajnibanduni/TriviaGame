//
//  TextExtension.swift
//  TriviaGame
//
//  Created by Rajni Banduni on 17/03/25.
//

import Foundation
import SwiftUI

extension Text {
    func textTitle() -> some View{
        self .font(.title)
            .fontWeight(.heavy)
            .foregroundStyle(Color("TextColor"))
    }
    
    func textSubtitle() -> some View {
        self.fontWeight(.regular)
            .foregroundStyle(Color("TextColor"))
    }
}
