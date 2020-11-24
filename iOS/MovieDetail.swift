//
//  MovieDetail.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-24.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                // close buntton
                HStack {
                    Spacer()
                    Button(action: {
                        // do sometiht
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 30))
                    })
                }.padding(.horizontal, 22)
                
                // scrollView
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width / 2)  //padding : screen.width -50   
                            
                        MovieInfoSubHeadLine(movie: movie)
                        
                        if movie.promotionHeadLine != nil {
                            Text(movie.promotionHeadLine!)
                                .bold()
                                .font(.headline)
                        }
                    }
                }
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie2)
    }
}

struct MovieInfoSubHeadLine: View {
    
    var movie: Movie
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text(String(movie.year))
            
            RatingView(rating: movie.rating)
            
            Text(movie.numberOfseasionsDisplay)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingView: View {
    var rating: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}
