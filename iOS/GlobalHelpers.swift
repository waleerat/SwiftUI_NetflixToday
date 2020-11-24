//
//  GlobalHelpers.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-23.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString , name: "DARK", thumnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-fi TV"])
let exampleMovie2 = Movie(id: UUID().uuidString , name: "Travelers", thumnailURL: URL(string: "https://picsum.photos/200/305")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-fi TV"])
let exampleMovie3 = Movie(id: UUID().uuidString , name: "Community", thumnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-fi TV"])
let exampleMovie4 = Movie(id: UUID().uuidString , name: "Alone", thumnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-fi TV"])
let exampleMovie5 = Movie(id: UUID().uuidString , name: "Hannibal", thumnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-fi TV"])
let exampleMovie6 = Movie(id: UUID().uuidString , name: "AfterLife", thumnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopian","Exciting","Suspenseful","Sci-fi TV"])
 

let exampleMovies: [Movie] = [exampleMovie1,exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6]


extension LinearGradient {
    static let blackopacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom)
     
}
