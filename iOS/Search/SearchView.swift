//
//  SearchView.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-26.
//

import SwiftUI

struct SearchView: View {
    // @ObservedObject get value form @Published
    // @Binding get value from @State
   
    @ObservedObject var vm = searchVM()
    @State private var searchText = ""
    
    
    var body: some View {
        // careate the own binding and when we call at SearchBar() we don't need $ because type is already Binding
        let searchTextBinding = Binding {
            return searchText
        } set: {
            searchText = $0
            vm.updateSearchText(with: $0)
        }
        
        
        return ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                SearchBar(text: searchTextBinding, isLoading: $vm.isLoading)
                    .padding()
                Spacer()
                
                ScrollView {
                    if vm.isShowingPupularMovies {
                        Text("Popular Movies")
                    }
                    
                    if vm.viewState == .empty {
                        Text("Empty")
                    } else if vm.viewState == .ready && !vm.isShowingPupularMovies {
                        Text("Search Result")
                    }
                }
                
                Spacer()
            }
        }.foregroundColor(.white)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
