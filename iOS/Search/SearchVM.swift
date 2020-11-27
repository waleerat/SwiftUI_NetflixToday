//
//  SearchVM.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-27.
//

import Foundation
import SwiftUI

class SearchVM: ObservableObject {
    
    @Published var isLoading: Bool = false
    @Published var viewState: ViewState = ViewState.ready
    
    @Published var popularMovies: [Movie] = []
    @Published var searchResults: [Movie] = []
    
    @Published var isShowingPupularMovies = true
    
    init() {
        getPupularMovies()
    }
    
    public func updateSearchText(with text: String) {
        setViewState(to: .loading)
        
        if text.count > 0 {
            isShowingPupularMovies = false
            getSearchResults(forText: text)
        } else {
            isShowingPupularMovies = true
        }
        
        getSearchResults(forText: text)
    }
    
    private func getPupularMovies() {
        self.popularMovies = generateMovies(40)
    }
    
    private func getSearchResults(forText text: String) {
        // the real project we query form firebase here
        
        let haveResult = Int.random(in: 0...3)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {  // will action 3 second
            if haveResult == 0 {
                // empty view
                self.searchResults = []
                self.setViewState(to: .empty)
            } else {
                // ready view
                let movies = generateMovies(21)
                self.searchResults = movies
                self.setViewState(to: .ready)
                
            }
        }
    }
    
    public func setViewState(to state: ViewState) {
        DispatchQueue.main.async {
            self.viewState = state
            
            self.isLoading = state == .loading
        }
    }
}
