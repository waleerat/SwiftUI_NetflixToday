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
    
    public var allGenre: [homeGenre] = [.AllGenres, .Action, .Comedy, .Horror, .Thriler]
    
    public func getMovie(forCate cate: String, andHomeRow homeRow: HomeTopRow, andGenre genre: homeGenre) -> [Movie] {
        // $0.movieType == .movie  : forEach loop and check any movie has type .movie will pass the fillter and
        switch homeRow {
        case .home :
            return movies[cate] ?? []
        case .movies:
            return (movies[cate] ?? []).filter({$0.movieType == .movie})
        case .tvShows:
            return (movies[cate] ?? []).filter({$0.movieType == .tvShow})
        case .myList:
            return movies[cate] ?? []
        }
         
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Treading Now"] = exampleMovies
        movies["Stand-UP Comedy"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Cifild "] = exampleMovies.shuffled()
    }
}
