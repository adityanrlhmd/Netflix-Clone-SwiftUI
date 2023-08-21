//
//  Movies.swift
//  Netflix Clone
//
//  Created by Aditt on 16/08/23.
//

import Foundation

class MovieStore: ObservableObject {
    @Published var items: [Movie] = [
        Movie(title: "Stranger Things", image: "movie", topRating: 5),
        Movie(title: "WASP Network", image: "movie2", topRating: 9),
        Movie(title: "All The Bright Places", image: "movie3", topRating: 15),
        Movie(title: "Stranger Things", image: "movie4", topRating: 1),
        Movie(title: "Mone Heist", image: "movie5", topRating: 2)
    ]
}
