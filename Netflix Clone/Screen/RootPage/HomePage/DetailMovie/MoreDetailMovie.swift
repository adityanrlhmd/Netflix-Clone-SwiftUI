//
//  HeroDetailMovie.swift
//  Netflix Clone
//
//  Created by Aditt on 16/08/23.
//

import SwiftUI

struct MoreDetailMovie: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("TRAILERS & MORE")
                .fontWeight(.medium)
                .font(.system(size: 16))
            
            VStack(alignment: .leading) {
                Image("trailer")
                    .resizable()
                    .frame(height: 212)
                    .scaledToFit()
                
                Text("Black Mirror: Bandersnatch (Trailer)")
                    .font(.system(size: 14))
            }
        }
    }
}

struct MoreDetailMovie_Previews: PreviewProvider {
    static var previews: some View {
        MoreDetailMovie()
            .preferredColorScheme(.dark)
    }
}
