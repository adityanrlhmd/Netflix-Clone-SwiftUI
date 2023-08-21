//
//  OnBoarding.swift
//  Netflix Clone
//
//  Created by Aditt on 17/08/23.
//

import SwiftUI

struct OnBoardingView: View {
    var body: some View {
        TabView() {
            ForEach(OnBoardingStore().items.indices) { index in
                let onboarding = OnBoardingStore().items[index]
                LayoutOnBoarding(title: onboarding.title, description: onboarding.description, bgImage: onboarding.bgImage, icon: onboarding.icon, showDoneButton: index == OnBoardingStore().items.count - 1)
            }
        }
        .ignoresSafeArea()
        .tabViewStyle(.page(indexDisplayMode: .always))
        .onAppear {
            UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(named: "PrimaryColor")
            UIPageControl.appearance().pageIndicatorTintColor = UIColor.white
        }
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
            .preferredColorScheme(.dark)
    }
}
