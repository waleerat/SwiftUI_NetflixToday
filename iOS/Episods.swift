//
//  Episods.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-24.
//

import Foundation

struct Episods: Identifiable {
    var id = UUID().uuidString
    var name: String
    var season: Int
    var thumnailImageURLString: String
    var descripion: String
    var length: Int
    
    var thumnailURL: URL {
        return URL(string: thumnailImageURLString)!
    }
}
