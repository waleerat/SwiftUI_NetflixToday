//
//  Movie.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-23.
//

import Foundation

struct Movie: Identifiable {
    var id: String  // = UUID().uuidString
    var name: String
    var thumnailURL: URL
    
    var categories: [String]
    
    // MovieDetail View
    var year: Int
    var rating: String
    var numberOfSeasions: Int?
    var promotionHeadLine: String?
    
    // Personalization
    var currentEpisode: CurrentEpisodsInfo?
    var defaultEpisodeInfo: CurrentEpisodsInfo
    var creators: String
    var cast: String
    
    var numberOfseasionsDisplay: String {
        if let num = numberOfSeasions {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        return ""
    }
    
    var episodeInfoDisplay: String {
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        } else {
            return "S\(defaultEpisodeInfo.season):E\(defaultEpisodeInfo.episode) \(defaultEpisodeInfo.episodeName)"
        }
    }
    
    var episodeDescriptionDisplay: String {
        if let current = currentEpisode {
            return current.description
        } else {
            return defaultEpisodeInfo.description
        }
    }
}


struct CurrentEpisodsInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}
