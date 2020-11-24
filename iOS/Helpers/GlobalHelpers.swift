//
//  GlobalHelpers.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-23.
//

import Foundation
import SwiftUI

// command+option+control+F  // to fix

let exampleMovie1 = Movie(id: UUID().uuidString ,
                          name: "DARK", thumnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Dystopian","Exciting","Suspenseful","Sci-fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasions: 1,
                          promotionHeadLine: "Comming Soon!!",
                          defaultEpisodeInfo: currentEpisodInfo1,
                          creators: "Baran bo Oden, Jantje friese",
                          cast: "Louis Hofmann, Oliver Masucci, jordis Trieble"
)
let exampleMovie2 = Movie(id: UUID().uuidString ,
                          name: "Travelers",
                          thumnailURL: URL(string: "https://picsum.photos/200/305")!,
                          categories: ["Dystopian","Exciting","Suspenseful","Sci-fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasions: 2,
                          promotionHeadLine: "Best reated show", defaultEpisodeInfo: currentEpisodInfo1,
                          creators: "Baran bo Oden, Jantje friese",
                          cast: "Louis Hofmann, Oliver Masucci, jordis Trieble"
)
let exampleMovie3 = Movie(id: UUID().uuidString ,
                          name: "Community",
                          thumnailURL: URL(string: "https://picsum.photos/200/301")!,
                          categories: ["Dystopian","Exciting","Suspenseful","Sci-fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasions: 3,
                          promotionHeadLine: "Just for you",
                          defaultEpisodeInfo: currentEpisodInfo1,
                          creators: "Baran bo Oden, Jantje friese",
                          cast: "Louis Hofmann, Oliver Masucci, jordis Trieble"
)
let exampleMovie4 = Movie(id: UUID().uuidString ,
                          name: "Alone",
                          thumnailURL: URL(string: "https://picsum.photos/200/304")!,
                          categories: ["Dystopian","Exciting","Suspenseful","Sci-fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasions: 4,
                          promotionHeadLine: "New in Netflix",
                          defaultEpisodeInfo: currentEpisodInfo1,
                          creators: "Baran bo Oden, Jantje friese",
                          cast: "Louis Hofmann, Oliver Masucci, jordis Trieble"
)
let exampleMovie5 = Movie(id: UUID().uuidString ,
                          name: "Hannibal",
                          thumnailURL: URL(string: "https://picsum.photos/200/302")!,
                          categories: ["Dystopian","Exciting","Suspenseful","Sci-fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasions: 5,
                          defaultEpisodeInfo: currentEpisodInfo1,
                          creators: "Baran bo Oden, Jantje friese",
                          cast: "Louis Hofmann, Oliver Masucci, jordis Trieble"
)
let exampleMovie6 = Movie(id: UUID().uuidString ,
                          name: "AfterLife",
                          thumnailURL: URL(string: "https://picsum.photos/200/303")!,
                          categories: ["Dystopian","Exciting","Suspenseful","Sci-fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasions: 6,
                          promotionHeadLine: "Wath Season 5 now",
                          defaultEpisodeInfo: currentEpisodInfo1,
                          creators: "Baran bo Oden, Jantje friese",
                          cast: "Louis Hofmann, Oliver Masucci, jordis Trieble"
)
 

let exampleMovies: [Movie] = [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6]


let currentEpisodInfo1 = CurrentEpisodsInfo(episodeName: "Dolly Parton’s Christmas",
                                            description: "Netflix’s peppy holiday musical has a campy streak and original songs by the country star, who plays a homeless angel with lessons for the town Scrooge.",
                                            season: 2,
                                            episode: 1)
 

extension LinearGradient {
    static let blackopacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom)
     
}
