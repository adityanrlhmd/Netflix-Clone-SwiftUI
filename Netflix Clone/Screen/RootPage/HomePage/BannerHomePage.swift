//
//  BannerHomePage.swift
//  Netflix Clone
//
//  Created by Aditt on 16/08/23.
//

import SwiftUI

struct BannerHomePage: View {
    var body: some View {
        ZStack {
            Image("movie")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .frame(minHeight: UIScreen.main.bounds.height * 0.5)
            
            VStack {
                Spacer()
                
                VStack(spacing: 12) {
                    Text("Stranger Things")
                        .font(.system(size: 36))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: 200)
                    
                    HStack {
                        Text("Tv Show")
                            .fontWeight(.medium)
                            .font(.system(size: 12))
                        
                        Text("Supernatural")
                            .fontWeight(.medium)
                            .font(.system(size: 12))
                        
                        Text("Thriller")
                            .fontWeight(.medium)
                            .font(.system(size: 12))
                    }
                    
                    HStack {
                        IconButton(systemIconName: "checkmark", labelText: "My List") {
                            
                        }.padding()
                        
                        CustomButton(systemIconName: "play.fill", text: "Play", isFullWidth: false, buttonType: .secondary) {
                            
                        }.padding()
                        
                        IconButton(systemIconName: "info.circle", labelText: "Info") {
                            
                        }.padding()
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color.black.opacity(0.8), Color.clear]),
                    startPoint: .top,
                    endPoint: .center
                )
                .overlay(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.8)]),
                        startPoint: .center,
                        endPoint: .bottom
                    )
                )
                .edgesIgnoringSafeArea(.all)
            )
        }
    }
}

struct BannerHomePage_Previews: PreviewProvider {
    static var previews: some View {
        BannerHomePage()
    }
}
