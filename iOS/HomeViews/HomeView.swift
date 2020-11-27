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
    
    @State private var movieDetailToShow: Movie? = nil
    
    @State private var topRowSelection: HomeTopRow = .home
    @State private var homeGenre: homeGenre = .AllGenres
    
    @State private var ShowGenreSelection = false
    @State private var showTopViewRowSelection = false
    
    
    var body: some View { 
       
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                // Main VStack
                ScrollView(showsIndicators: false) {
                    LazyVStack {
                        // Top Menu
                        // Extract SubView : move tag to subview
                        TopRowButton(topRowSelection: $topRowSelection, homeGenre: $homeGenre, ShowGenreSelection: $ShowGenreSelection, showTopViewRowSelection: $showTopViewRowSelection)
                            .zIndex(0)
                        
                        TopMoviePreview(movie: exampleMovie3)
                            .frame(width: screen.size.width)
                            .padding(.top, -110)
                            .zIndex(-1)
                        
                        MoviePreviewRow(movies: exampleMovies)
                        
                        // Show Movie Categories
                        HomeStack(vm: vm, topRowSelection: topRowSelection, selectedGenre: homeGenre, movieDetailToShow: $movieDetailToShow)
                    }
                }
                // Popup and show movie detail
                if movieDetailToShow != nil {
                    MovieDetail(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
                        .animation(.easeIn)
                        .transition(.opacity)
                }
                // Popup and show view selection
                if showTopViewRowSelection {
                    // Add Group to ignore safe area
                    Group {
                        Color.black.opacity(0.85)
                        
                        VStack(spacing: 40) {
                            Spacer()
                            // to loop enum value we need to define : enum HomeTopRow: String, CaseIterable {
                            ForEach(HomeTopRow.allCases, id: \.self) { topRow in
                                Button(action: {
                                     // action
                                    topRowSelection = topRow  // true/false
                                    showTopViewRowSelection = false
                                }, label: {
                                    if (topRowSelection == topRow) {
                                        Text("\(topRow.rawValue)")
                                            .bold()
                                            .font(.system(size: 30))
                                    } else {
                                        Text("\(topRow.rawValue)")
                                            .foregroundColor(.gray)
                                            .font(.system(size: 30))
                                    }
                                })
                            }
                            Spacer()
                            Button(action: {
                                //do Action
                                showTopViewRowSelection = false
                            }, label: {
                                Image(systemName: "xmark.circle.fill")
                                    .font(.system(size: 40))
                            })
                            .padding(.bottom, 30)
                        }
                    }
                    .edgesIgnoringSafeArea(.all)
                    
                }
                
                
                // Popup and show view selection
                if ShowGenreSelection {
                    // Add Group to ignore safe area
                    Group {
                        Color.black.opacity(0.85)
                        
                        VStack(spacing: 40) {
                            Spacer()
                            // to loop enum value we need to define : enum HomeTopRow: String, CaseIterable {
                            ScrollView {
                                VStack(spacing: 40) {
                                    ForEach(vm.allGenre, id: \.self) { genre in
                                        Button(action: {
                                             // action
                                             homeGenre = genre
                                             ShowGenreSelection = false
                                        }, label: {
                                            if (homeGenre == genre) {
                                                Text("\(genre.rawValue)")
                                                    .bold()
                                                    .font(.system(size: 30))
                                            } else {
                                                Text("\(genre.rawValue)")
                                                    .foregroundColor(.gray)
                                                    .font(.system(size: 30))
                                            }
                                            
                                        })
                                    }
                                }
                            }
                            
                            Spacer()
                            Button(action: {
                                //do Action
                                ShowGenreSelection = false
                            }, label: {
                                Image(systemName: "xmark.circle.fill")
                                    .font(.system(size: 40))
                            })
                            .padding(.bottom, 30)
                        }
                    }
                    .edgesIgnoringSafeArea(.all)
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
    
    @Binding var topRowSelection: HomeTopRow
    @Binding var homeGenre: homeGenre
     
    @Binding var ShowGenreSelection: Bool
    @Binding var showTopViewRowSelection: Bool
    
    var body: some View {
        
        switch topRowSelection {
        case .home:
            // Home Selection
            HStack {
                Button(action: {
                    topRowSelection = .home
                }, label: {
                    Image("netflix_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                })
                .buttonStyle(PlainButtonStyle())
                Spacer()
                
                Button(action: {
                    topRowSelection = .tvShows
                }, label: {
                    Text("TV Show")
                })
                .buttonStyle(PlainButtonStyle())
                Spacer()
                
                Button(action: {
                    topRowSelection = .movies
                }, label: {
                    Text("Movies")
                })
                .buttonStyle(PlainButtonStyle())
                Spacer()
                
                Button(action: {
                    topRowSelection = .myList
                }, label: {
                    Text("My List")
                })
                .buttonStyle(PlainButtonStyle())
                
            }
            //.background(Color.black)
            .padding(.leading, 30)
            .padding(.trailing,30)
            // Home Selection
        case .tvShows, .movies, .myList:
        // .tvShows, .movies, .myList Selection
            HStack {
                Button(action: {
                    topRowSelection = .home
                }, label: {
                    Image("netflix_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                })
                .buttonStyle(PlainButtonStyle())
                
                HStack(spacing: 20) {
                    Button(action: {
                        // Action menu picker
                        showTopViewRowSelection = true
                    }, label: {
                        HStack {
                            Text(topRowSelection.rawValue)
                                .font(.system(size: 18))
                            Image(systemName: "triangle.fill")
                                .font(.system(size: 10))
                                .rotationEffect(.degrees(180), anchor: .center)
                            
                        }
                    })
                    .buttonStyle(PlainButtonStyle())
                    
                    Button(action: {
                        // Action Genres picker
                        ShowGenreSelection = true
                    }, label: {
                        HStack {
                            Text(homeGenre.rawValue)
                                .font(.system(size: 12))
                            Image(systemName: "triangle.fill")
                                .font(.system(size: 10))
                                .rotationEffect(.degrees(180), anchor: .center)
                        }
                    })
                    .buttonStyle(PlainButtonStyle())
                    Spacer()
                }
                .buttonStyle(PlainButtonStyle())
                
            }
            //.background(Color.black)
            .padding(.leading, 30)
            .padding(.trailing,30)
        // .tvShows, .movies, .myList Selection
        }
        
    }
}



