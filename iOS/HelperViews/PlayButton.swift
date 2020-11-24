//
//  WhiteButton.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-24.
//

import SwiftUI

struct PlayButton: View {
    var text: String
    var imageName: String
    var backgroundColor: Color = Color.white
    
    var action: () -> Void
    
    var body: some View {
        Button(action: action , label: {
            HStack {
                Spacer()
                
                Image(systemName: imageName)
                    .font(.headline)
                Text(text)
                    .bold()
                    .font(.system(size: 16))
                
                Spacer()
               
            }
            .padding(.vertical, 6)
            .foregroundColor(backgroundColor == .white ? .blue : .white)
            .background(backgroundColor)
            .cornerRadius(3.0)
        })
        
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton(text: "Play", imageName: "play.fill") {
            print("Tapped")
        }
    }
}
