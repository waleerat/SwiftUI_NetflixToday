//
//  PagerView.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-27.
//

import SwiftUI
// Generic parameter : <Content: View>
struct PagerView<Content: View>: View {
    let pageCount: Int
    @Binding var currentIndex: Int
    // Content : generic content
    let content: Content
    
    init(
        pageCount: Int,
        currentIndex: Binding<Int>,
        // return what ever <Content: View>  is
        @ViewBuilder content: () -> Content
    ) {
        self.pageCount = pageCount
        self._currentIndex = currentIndex
        self.content = content()
    }
    
    var body: some View {
        // GeometryReader : read size of the frame use for dinamic view
        GeometryReader { geo in
            HStack {
                self.content
                    .frame(width: geo.size.width)
            }
        }
    }
}
// .constant(0) pass value back to parent
struct PagerView_Previews: PreviewProvider {
    static var previews: some View {
        PagerView(pageCount: 3, currentIndex: .constant(0), content: {
            Color.red
            Color.blue
            Color.black
        })
    }
}
