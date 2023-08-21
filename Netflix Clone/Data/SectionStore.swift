//
//  SectionStore.swift
//  Netflix Clone
//
//  Created by Aditt on 16/08/23.
//

import Foundation

class SectionStore: ObservableObject {
    @Published var items: [Section]

    init(movieStore: MovieStore) {
        self.items = [
            Section(title: "My List", movies: movieStore.items),
//            Section(title: "Gems for you", movies: movieStore.items),
//            Section(title: "Romance/Drama", movies: movieStore.items),
//            Section(title: "Action/Thriller", movies: movieStore.items)
        ]
    }
}
