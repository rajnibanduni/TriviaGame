//
//  ProgressBar.swift
//  TriviaGame
//
//  Created by Rajni Banduni on 17/03/25.
//

import SwiftUI

struct ProgressBar: View {
    var progress:CGFloat
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(maxWidth: 350, maxHeight: 4)
                .foregroundColor(Color(hue: 0.0, saturation: 0.001, brightness: 0.903))
                .cornerRadius(10)
            
            Rectangle()
                .frame(width:progress, height: 4)
                .foregroundColor(Color("Primary-Color"))
                .cornerRadius(10)
            
        }
    }
}

#Preview {
    ProgressBar(progress: 50)
}
