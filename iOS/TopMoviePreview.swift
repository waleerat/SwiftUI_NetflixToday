//
//  TopMoviePreview.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-24.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    var movie: Movie
    
    var body: some View {
        
        ZStack {
            KFImage(movie.thumnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        Text(category)
                        
                        if !isCategoryLast(category) {
                            Image(systemName: "circle.fill")
                                .foregroundColor(.blue)
                                .font(.system(size: 3))
                        }
                    }
                }
                .padding(.bottom)
                
  
                 HStack {
                     Spacer()
                     
                     SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                         //
                     }
                     
                     Spacer()
                     
                     WhiteButton(text: "Play", imageName: "play.fill") {
                         //
                     }
                     .frame(width: 120)
                     
                     Spacer()
                     
                     SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                         //
                     }
                     
                     Spacer()
                 } 
                 
            }
            .background(LinearGradient.blackopacityGradient
                            .padding(.top, 250)
            )
             
        }
        .foregroundColor(.white) 
    }
    
    func isCategoryLast(_ cat: String) -> Bool {
        let catCount = movie.categories.count
        
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        
        return true
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
