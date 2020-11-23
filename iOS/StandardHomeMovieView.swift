//
//  StandardHomeMovieView.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-23.
//

import SwiftUI
import KingfisherSwiftUI

struct StandardHomeMovieView: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumnailUIR)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovieView_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovieView(movie: exampleMovie1) 
    }
}
