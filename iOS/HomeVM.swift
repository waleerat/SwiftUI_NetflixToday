//
//  HomeVM.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-23.
//

import Foundation

class HomeVM: ObservableObject {
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        // foreach key in movies dictionary / $0 is the value
        movies.keys.map({String($0)})
    }
    
    public func getMovie(forCate cate: String) -> [Movie] {
        return movies[cate] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Treading Now"] = exampleMovies
        movies["Stand-UP Comedy"] = exampleMovies
    }
}
