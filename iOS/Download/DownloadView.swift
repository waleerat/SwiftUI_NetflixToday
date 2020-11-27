//
//  DownloadView.swift
//  NetflixToday
//
//  Created by Waleerat Gottlieb on 2020-11-27.
//

import SwiftUI

struct DownloadView: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Image(systemName: "info.circle")
                    Text("Smart Download")
                    Text("On")
                        .foregroundColor(.blue)
                    Spacer()
                }
                .padding()
                .font(.system(size: 18, weight: .bold))
                
                ZStack {
                    Circle()
                        .foregroundColor(.graySearchBackground)
                        .padding(.horizontal, 100)
                    
                    Image(systemName: "arrow.down.to.line.alt")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75)
                        .foregroundColor(.gray)
                }
                .frame(height: 275)
                .padding(.top, 25)
                
                VStack (spacing: 20) {
                    Text("Never be without Netflex")
                        .font(.title2)
                        .bold()
                    Text("Download shows amd movies so you'll never be with out something to watch \n -- event when you are offline")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 50)
                }
                
                Button(action: {
                    // Show shows that canbe downloaded
                }, label: {
                    Text("See waht you can download")
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.white)
                })
                
                
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct DownloadView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            DownloadView()
        }
        
    }
}
