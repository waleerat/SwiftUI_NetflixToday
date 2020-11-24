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
}
