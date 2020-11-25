//
//  MoreLikeThis.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-25.
//

import SwiftUI

struct MoreLikeThis: View {
    
    var movies: [Movie]
    
    // Set columns to grid
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns){
                ForEach(0..<movies.count) { index in
                    StandardHomeMovie(movie: movies[index]) 
                }
            }
        }
    }
}

struct MoreLikeThis_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThis(movies: exampleMovies)
    }
}
