//
//  HeroDetailMovie.swift
//  Netflix Clone
//
//  Created by Aditt on 16/08/23.
//

import SwiftUI

struct HeroDetailMovie: View {
    var detailMovieAnimation: Namespace.ID
    let dataMovie: Movie
    
    let geometry: GeometryProxy
    
    var body: some View {
        ZStack {
            Image(dataMovie.image)
                .resizable()
                .frame(minHeight: UIScreen.main.bounds.height * 0.5)
                .overlay(
                    VisualEffectView(effect: UIBlurEffect(style: .regular))
                )
                .ignoresSafeArea(edges: .top)
            
            LinearGradient(
                gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.8)]),
                startPoint: .center,
                endPoint: .bottom
            )
            
            VStack(spacing: 28) {
                VStack(alignment: .center, spacing: 16) {
                    Image(dataMovie.image)
                        .resizable()
                        .scaledToFill()
                        .matchedGeometryEffect(id: "image\(dataMovie.id)", in: detailMovieAnimation)
                        .frame(width: 135, height: 190)
                    
                    HStack(spacing: 16) {
                        Text("89% match")
                            .foregroundColor(Color("Green"))
                        
                        HStack(spacing: 12) {
                            Text("2018")
                            
                            Text("M18")
                            
                            Text("1h30m")
                        }
                        .opacity(0.5)
                    }
                    .font(.system(size: 14))
                }
                
                VStack(alignment: .leading, spacing: 12) {
                    CustomButton(systemIconName: "play.fill", text: "Play", isFullWidth: true, buttonType: .primary) {
                        
                    }
                    
                    Text("In 1984, a young programmer begins to question reality as he adapts a dark fanatsy novel into a video game. A mind-bending tale with multiple endings")
                        .font(.system(size: 14))
                    
                    
                    Text("Cast: Fionn Whitehead, Will Poulter, Craig Parkinson")
                        .font(.system(size: 12))
                        .opacity(0.5)
                    
                    HStack(spacing: 12) {
                        IconButton(systemIconName: "checkmark", labelText: "My List") {
                            
                        }.padding()
                        
                        IconButton(systemIconName: "hand.thumbsup", labelText: "Rate") {
                            
                        }.padding()
                        
                        IconButton(systemIconName: "square.and.arrow.up", labelText: "Share") {
                            
                        }.padding()
                    }
                }
            }
            .padding(.top, geometry.safeAreaInsets.top)
            .padding(.horizontal)
        }
    }
}

struct HeroDetailMovie_Previews: PreviewProvider {
    @Namespace static var namespace
    
    static var previews: some View {
        GeometryReader { geometry in
            HeroDetailMovie(detailMovieAnimation: namespace, dataMovie: Movie(title: "Sample Movie", image: "movie", topRating: 5), geometry: geometry)
        }
    }
}
