//
//  WithIconOnBoarding.swift
//  Netflix Clone
//
//  Created by Aditt on 17/08/23.
//

import SwiftUI

struct WithIconOnBoarding: View {
    let title: String
    let description: String
    let image: String
    
    var body: some View {
        ScrollView {
            Image(image)
                .resizable()
                .scaledToFit()
            
            VStack {
                Text(title)
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                Text(description)
                    .font(.system(size: 18))
                    .multilineTextAlignment(.center)
                    .padding(.vertical)
            }
            .padding(.horizontal, 50)
        }
        .safeAreaInset(edge: .top, content: {
            Image("logo-full")
        })
        .safeAreaInset(edge: .bottom) {
            CustomButton(systemIconName: nil, text: "SIGN IN", isFullWidth: true, buttonType: .primary) {
                
            }
            .padding()
        }
    }
}

struct WithIconOnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        WithIconOnBoarding(title: "Watch on any device", description: "Stream on your phone, tablet, laptop, and TV without paying more.", image: "icon-onboard")
            .preferredColorScheme(.dark)
    }
}
