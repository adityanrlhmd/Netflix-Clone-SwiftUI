//
//  SectionHomePage.swift
//  Netflix Clone
//
//  Created by Aditt on 16/08/23.
//

import SwiftUI

struct SectionHomePage: View {
    var namespace: Namespace.ID
    @Binding var selectedMovie: Movie?
    
    var title: String
    var movies: [Movie]
    var descript: String?
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .fontWeight(.medium)
                    .font(.system(size: 18))
                
                Spacer()
            }
            .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(movies) { movie in
                        ZStack(alignment: .topLeading) {
                            Image(movie.image)
                                .resizable()
                                .scaledToFill()
                                .matchedGeometryEffect(id: "image\(movie.id)", in: namespace)
                                .frame(width: 107, height: 163)
                            
                            HStack {
                                Image("logo")
                                    .resizable()
                                    .frame(width: 11, height: 19)
                                    .padding(5)
                                
                                Spacer()
                                
                                if movie.topRating <= 10 {
                                    VStack {
                                        Text("Top")
                                            .fontWeight(.bold)
                                            .font(.system(size: 8))
                                        
                                        Text("10")
                                            .fontWeight(.bold)
                                            .font(.system(size: 10))
                                    }
                                    .padding(3)
                                    .foregroundColor(Color.white)
                                    .background(Color("PrimaryColor"))
                                }
                            }
                        }
                        .cornerRadius(4)
                        .onTapGesture {
                            withAnimation(.spring(response: 0.6, dampingFraction: 0.8), {
                                selectedMovie = movie
                            })
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct SectionHomePage_Previews: PreviewProvider {
    @Namespace static var namespace
    static let movie = Movie(title: "Sample Movie", image: "movie", topRating: 5)
    
    static var previews: some View {
        SectionHomePage(namespace: namespace, selectedMovie: .constant(movie), title: "Shop", movies: MovieStore().items, descript: "Exclusive limited editions of carefully selected high-quality apparel and lifestyle products tied to our shows and brand on a regular basis")
            .preferredColorScheme(.dark)
    }
}
