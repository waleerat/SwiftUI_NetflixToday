//
//  HomeStack.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-26.
//

import Foundation
import SwiftUI

struct HomeStack: View {
    
    var vm: HomeVM
    var topRowSelection: HomeTopRow
    var selectedGenre: homeGenre
    
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        ForEach(vm.allCategories, id: \.self) { category in
            VStack {
                HStack {
                    Text(category)
                        .font(.title3)
                        .bold()
                    Spacer()
                }
                ScrollView(.horizontal , showsIndicators: false){
                    LazyHStack {
                        ForEach(vm.getMovie(forCate: category, andHomeRow: topRowSelection, andGenre: selectedGenre)) { movie in
                            StandardHomeMovie(movie:movie)
                                .frame(width: 125, height: 200)
                                .onTapGesture(perform: {  //## Show movie
                                    movieDetailToShow = movie
                                })
                        }
                    }
                }
            }
            .padding(.leading, 6)
        }
    }
}

 
struct HomeStack_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                HomeStack(vm: HomeVM(), topRowSelection: .home, selectedGenre: .AllGenres, movieDetailToShow: .constant(nil))
            }
            .foregroundColor(.white)
            
        }
       
    }
}
