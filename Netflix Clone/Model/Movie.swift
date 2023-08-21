//
//  File.swift
//  Netflix Clone
//
//  Created by Aditt on 16/08/23.
//

import Foundation

struct Movie: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var topRating: Int
}
