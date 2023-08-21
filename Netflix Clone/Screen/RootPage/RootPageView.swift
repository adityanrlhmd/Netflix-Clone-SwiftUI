//
//  HomePageView.swift
//  Netflix Clone
//
//  Created by Aditt on 16/08/23.
//

import SwiftUI

struct RootPageView: View {
    @Namespace private var detailMovieAnimation
    @State private var selectedMovie: Movie? = nil
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            if selectedMovie != nil {
                DetailMovieView(detailMovieAnimation: detailMovieAnimation, selectedMovie: $selectedMovie)
            } else {
                TabView {
                    Group {
                        HomePageView(detailMovieAnimation: detailMovieAnimation, selectedMovie: $selectedMovie)
                            .tabItem {
                                Label("Home", systemImage: "house")
                                    .padding()
                            }
                        
                        Text("Downloads")
                            .tabItem {
                                Label("Downloads", systemImage: "arrow.down.to.line")
                                    .padding()
                            }
                        
                        Text("More")
                            .tabItem {
                                Label("More", systemImage: "line.3.horizontal")
                                    .padding()
                            }
                    }
                    .toolbarBackground(.black, for: .tabBar)
                }
            }
        }
    }
}

struct RootPageView_Previews: PreviewProvider {
    static var previews: some View {
        RootPageView()
            .preferredColorScheme(.dark)
    }
}
