//
//  PrimaryButton.swift
//  TriviaGame
//
//  Created by Rajni Banduni on 15/03/25.
//

import SwiftUI

struct PrimaryButton: View {
    var text:String
    var background:Color = Color("TextColor")
    
    var body: some View {
        Text(text)
            .font(.system(.body, design: .rounded)) .fontWeight(.heavy)
            .foregroundStyle(.white)
            .padding()
            .padding(.horizontal)
            .background(background)
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .shadow(radius: 10)
        
    }
}

#Preview {
    PrimaryButton(text: "Next")
}
