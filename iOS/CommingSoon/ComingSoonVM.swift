//
//  CommingSoonVM.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-27.
//

import SwiftUI
 
class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)  // query database here
    }
}

