//
//  ContentView.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-23.
//

import SwiftUI

struct ContentView: View {
    
    init(){
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor.black
    }
    
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }.tag(0)
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }.tag(0)
            Text("Comming Soon")
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Comming Soon")
                }.tag(0)
            Text("Download")
                .tabItem {
                    Image(systemName: "arrow.down.to.line.alt")
                    Text("Download")
                }.tag(0)
            Text("More")
                .tabItem {
                    Image(systemName: "equal")
                    Text("More")
                }.tag(0)
            
        }
        .accentColor(.white)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
