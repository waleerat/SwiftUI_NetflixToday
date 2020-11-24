//
//  GlobalHelpers.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-23.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString , name: "DARK", thumnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-fi TV"], year: 2020, rating: "TV-MA", numberOfSeasions: 1, promotionHeadLine: "Comming Soon!!")
let exampleMovie2 = Movie(id: UUID().uuidString , name: "Travelers", thumnailURL: URL(string: "https://picsum.photos/200/305")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-fi TV"], year: 2020, rating: "TV-MA", numberOfSeasions: 2, promotionHeadLine: "Best reated show")
let exampleMovie3 = Movie(id: UUID().uuidString , name: "Community", thumnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-fi TV"], year: 2020, rating: "TV-MA", numberOfSeasions: 3, promotionHeadLine: "Just for you")
let exampleMovie4 = Movie(id: UUID().uuidString , name: "Alone", thumnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-fi TV"], year: 2020, rating: "TV-MA", numberOfSeasions: 4, promotionHeadLine: "New in Netflix")
let exampleMovie5 = Movie(id: UUID().uuidString , name: "Hannibal", thumnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-fi TV"], year: 2020, rating: "TV-MA", numberOfSeasions: 5)
let exampleMovie6 = Movie(id: UUID().uuidString , name: "AfterLife", thumnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-fi TV"], year: 2020, rating: "TV-MA", numberOfSeasions: 6, promotionHeadLine: "Wath Season 5 now")
 

let exampleMovies: [Movie] = [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6]


extension LinearGradient {
    static let blackopacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom)
     
}
