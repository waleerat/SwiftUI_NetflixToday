//
//  CommingSoon.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-27.
//

import SwiftUI

struct CommingSoon: View {
    @State private var showNoificationList = false
    
    @State private var navBarHidden = true
    
    var body: some View {
        
        //NavigationView {
            Group {
                ZStack {
                    Color.black
                        .edgesIgnoringSafeArea(.all)
                    ScrollView {
                        VStack {
                            NotificationBar(showNotificationList: $showNoificationList)
                            
                            Text("Notification Bar")
                        }
                    }
                    .foregroundColor(.white)
                }
                
                NavigationLink(
                    destination: Text("Notifications List"),
                    isActive: $showNoificationList,
                    label: {
                        EmptyView()
                    })
                    .navigationTitle("")
                    .navigationBarHidden(navBarHidden)
                    .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification), perform: { _ in
                        self.navBarHidden = true
                    })
                    .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification), perform: { _ in
                        self.navBarHidden = false
                    })
                 
            }
        //}
        
    }
}

struct CommingSoon_Previews: PreviewProvider {
    static var previews: some View {
        CommingSoon()
    }
}
