//
//  EnumValues.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-26.
//

import Foundation

// Movie.swift
enum MovieType {
    case movie
    case tvShow
}


// HOmeViews
enum HomeTopRow: String, CaseIterable {
    case home = "Home"
    case tvShows = "TV Show"
    case movies = "Movies"
    case myList = "My List"
}

enum homeGenre: String {
    case AllGenres
    case Action
    case Comedy
    case Horror
    case Thriler
}

// MovieDetail/ CustomTapSwitcher
enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}
