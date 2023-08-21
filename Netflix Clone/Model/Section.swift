//
//  Section.swift
//  Netflix Clone
//
//  Created by Aditt on 16/08/23.
//

import Foundation

struct Section: Identifiable {
    var id = UUID()
    var title: String
    var movies: [Movie]
}
