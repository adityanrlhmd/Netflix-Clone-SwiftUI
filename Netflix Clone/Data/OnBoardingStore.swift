//
//  OnBoardingStore.swift
//  Netflix Clone
//
//  Created by Aditt on 17/08/23.
//

import Foundation

class OnBoardingStore: ObservableObject {
    @Published var items: [OnBoarding] = [
        OnBoarding(title: "Watch on any device", description: "Stream on your phone, tablet, laptop, and TV without paying more.", bgImage: nil, icon: "icon-onboard"),
        OnBoarding(title: "Download and go", description: "Save your data, watch offline on a plane, train, or submarine...", bgImage: nil, icon: "icon-onboard2"),
        OnBoarding(title: "No pesky contracts", description: "Join today, cancel anytime.", bgImage: nil, icon: "icon-onboard3"),
        OnBoarding(title: "Unlimited entertainment, one low price", description: "Stream and download as much as you want, no extra fees.", bgImage: "bg-onboard", icon: nil),
    ]
}
