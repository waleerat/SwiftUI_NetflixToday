//
//  CustomTabSwitcher.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-25.
//

import SwiftUI

struct CustomTabSwitcher: View {
    @State private var currentTab: CustomTab = .episodes
    
    var tabs: [CustomTab]
    var movie: Movie
    // Binding is the pointer. it point to @State in MovieDetail
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            // CUSTOM TAB PICKER
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                                .foregroundColor(tab == currentTab ? Color.red : Color.clear)
                            
                            Button(action: {
                                // action do something
                                currentTab = tab
                                
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold ))
                                    .foregroundColor(tab == currentTab ? Color.white : Color.gray)
                            })
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: widthForTab(tab), height: 30)
                            
                        }
                    }
                }
            }
            .padding(.horizontal,10)
           
            // SELECTED VIEW
            switch currentTab {
            case .episodes:
               EpisodesView(episodes: movie.episodes ?? [], showSeasonPicker: $showSeasonPicker, selectedSeason: $selectedSeason)
            case .trailers:
                TrailerList(trailers: movie.trailers)
            case .more:
                MoreLikeThis(movies: movie.moreLikeThisMovies)
            }


        }
        .foregroundColor(.white)
    }
}


struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            CustomTabSwitcher(tabs:[.episodes, .trailers,.more], movie: exampleMovie1, showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
        
        
    }
}
