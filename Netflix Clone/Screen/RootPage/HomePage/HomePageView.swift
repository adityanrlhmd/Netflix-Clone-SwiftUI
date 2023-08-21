//
//  HomePageView.swift
//  Netflix Clone
//
//  Created by Aditt on 16/08/23.
//

import SwiftUI

struct HomePageView: View {
    @ObservedObject var sectionStore = SectionStore(movieStore: MovieStore())
    
    @State private var searchText = ""
    
    var detailMovieAnimation: Namespace.ID
    @Binding var selectedMovie: Movie?
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    BannerHomePage()
                    
                    ForEach(sectionStore.items) { section in
                        SectionHomePage(namespace: detailMovieAnimation, selectedMovie: $selectedMovie, title: section.title, movies: section.movies)
                    }
                }
            }
            .ignoresSafeArea(edges: .top)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("logo")
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Button {
                            
                        } label: {
                            Text("TV Shows")
                                .foregroundColor(Color.white)
                        }
                        
                        Button {
                            
                        } label: {
                            Text("Movies")
                                .foregroundColor(Color.white)
                        }
                        
                        Button {
                            
                        } label: {
                            Text("Categories")
                                .foregroundColor(Color.white)
                        }
                    }
                }
            }
            .searchable(text: $searchText) {
                Text("Result")
            }
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    @Namespace static var namespace
    static let movie = Movie(title: "Sample Movie", image: "movie", topRating: 5)
    
    static var previews: some View {
        HomePageView(detailMovieAnimation: namespace, selectedMovie: .constant(movie))
            .preferredColorScheme(.dark)
    }
}
