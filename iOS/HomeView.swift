//
//  HomeView.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-23.
//

import SwiftUI

struct HomeView: View {
    var vm = HomeVM()
    
    var body: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            // Main VStack
            ScrollView {
                LazyVStack {
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
                                    ForEach(vm.getMovie(forCate: category)) { movie in
                                        StandardHomeMovieView(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                    }
                }
            }
            
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
