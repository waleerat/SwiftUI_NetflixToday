//
//  HomeView.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-23.
//

import SwiftUI

struct HomeView: View {
    var vm = HomeVM()
    let screen = UIScreen.main.bounds
    
    var body: some View { 
       
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                // Main VStack
                ScrollView {
                    LazyVStack {
                        // Top Menu
                        TopRowButton()  // Extract SubView : move tag to subview
                            .zIndex(0)
                        
                        TopMoviePreview(movie: exampleMovie3)
                            .frame(width: screen.size.width)
                            .padding(.top, -110)
                            .zIndex(-1)
                        
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
                                            StandardHomeMovie(movie:movie)
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

struct TopRowButton: View {
    var body: some View {
        HStack {
            Button(action: {
                //action after click bnt
            }, label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            })
            .buttonStyle(PlainButtonStyle())
            Spacer()
            
            Button(action: {
                //action after click bnt
            }, label: {
                Text("TV Show")
            })
            .buttonStyle(PlainButtonStyle())
            Spacer()
            
            Button(action: {
                //action after click bnt
            }, label: {
                Text("Movies")
            })
            .buttonStyle(PlainButtonStyle())
            Spacer()
            
            Button(action: {
                //action after click bnt
            }, label: {
                Text("My List")
            })
            .buttonStyle(PlainButtonStyle())
            
        }
        //.background(Color.black)
        .padding(.leading, 10)
        .padding(.trailing,30)
    }
}
