//
//  WithBgOnBoarding.swift
//  Netflix Clone
//
//  Created by Aditt on 17/08/23.
//

import SwiftUI

struct LayoutOnBoarding: View {
    @EnvironmentObject var appState: AppState
    
    let title: String
    let description: String
    let bgImage: String?
    let icon: String?
    
    let showDoneButton: Bool
    
    var body: some View {
        ScrollView {
            ZStack {
                if bgImage != nil {
                    Image(bgImage ?? "bg-black")
                        .resizable()
                        .scaledToFill()
                } else {
                    Image("bg-black")
                        .resizable()
                        .scaledToFill()
                }
                
                VStack {
                    if let icon = icon {
                        Image(icon)
                            .resizable()
                            .scaledToFit()
                    }
                    
                    Text(title)
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                    Text(description)
                        .font(.system(size: 18))
                        .multilineTextAlignment(.center)
                        .padding(.vertical)
                    
                    if showDoneButton {
                        CustomButton(systemIconName: nil, text: "Lets get started", isFullWidth: true, buttonType: .secondary) {
                            withAnimation {
                                appState.isOnboarding = false
                            }
                        }
                    }
                }
                .padding(.horizontal, 50)
            }
        }
        .ignoresSafeArea()
        .safeAreaInset(edge: .top, content: {
            Image("logo-full")
        })
        .safeAreaInset(edge: .bottom) {
            VStack(spacing: 12) {
                CustomButton(systemIconName: nil, text: "SIGN IN", isFullWidth: true, buttonType: .primary) {
                    
                }
                
                if !showDoneButton {
                    Button {
                        withAnimation {
                            appState.isOnboarding = false
                        }
                    } label: {
                        Text("SKIP")
                    }
                }
            }
            .padding()

        }
    }
}

struct LayoutOnBoarding_Previews: PreviewProvider {
    static var previews: some View {
        LayoutOnBoarding(title: "Watch on any device", description: "Stream on your phone, tablet, laptop, and TV without paying more.", bgImage: "bg-onboard", icon: "icon-onboard", showDoneButton: true)
        .preferredColorScheme(.dark)    }
}
