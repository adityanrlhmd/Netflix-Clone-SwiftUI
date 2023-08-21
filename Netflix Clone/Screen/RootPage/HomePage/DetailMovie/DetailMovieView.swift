//
//  DetailMovieView.swift
//  Netflix Clone
//
//  Created by Aditt on 16/08/23.
//

import SwiftUI

struct DetailMovieView: View {
    var detailMovieAnimation: Namespace.ID
    @Binding var selectedMovie: Movie?
    
    var body: some View {
        NavigationStack{
            GeometryReader { geometry in
                ScrollView {
                    VStack {
                        if let unwrappedDataMovie = selectedMovie {
                            HeroDetailMovie(detailMovieAnimation: detailMovieAnimation, dataMovie: unwrappedDataMovie, geometry: geometry)
                            
                            MoreDetailMovie()
                        } else {
                            Text("No movie data available")
                        }
                    }
                }
                .ignoresSafeArea(edges: .top)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            withAnimation(.spring(response: 0.5, dampingFraction: 0.7), {
                                selectedMovie = nil
                            })
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: .infinity)
                                    .fill(Color.black.opacity(0.3))
                                
                                Image(systemName: "xmark")
                                    .padding(5)
                            }
                        }

                    }
                }
//                .navigationBarTitle("Stranger Things", displayMode: .inline)
            }
        }
    }
}

struct DetailMovieView_Previews: PreviewProvider {
    @Namespace static var namespace
    static let movie = Movie(title: "Sample Movie", image: "movie", topRating: 5)

        static var previews: some View {
            DetailMovieView(detailMovieAnimation: namespace, selectedMovie: .constant(movie))
                .preferredColorScheme(.dark)
        }
}
