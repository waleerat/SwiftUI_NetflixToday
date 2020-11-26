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
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }.tag(0)
            Text("Comming Soon")
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Secound")
                }.tag(0)
            Text("Download")
                .tabItem {
                    Image(systemName: "arrow.down.to.line.alt")
                    Text("Secound")
                }.tag(0)
            Text("More")
                .tabItem {
                    Image(systemName: "equal")
                    Text("Secound")
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
