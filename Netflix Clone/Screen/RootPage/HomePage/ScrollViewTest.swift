//
//  ScrollView.swift
//  Netflix Clone
//
//  Created by Aditt on 17/08/23.
//

import SwiftUI

struct ScrollViewTest: View {
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                ZStack(alignment: .top) {
                    Image("movie")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: geometry.safeAreaInsets.top + UIScreen.main.bounds.height * 0.5)
                        .clipped()
                        .overlay(
                            VisualEffectView(effect: UIBlurEffect(style: .regular))
                        )
                    
                    VStack {
                        ForEach(0..<30, id: \.self) { item in
                            Text("test")
                        }
                    }
                    .padding(.top, geometry.safeAreaInsets.top)
                }
            }
            .ignoresSafeArea()
        }
    }
}

struct ScrollViewTest_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewTest()
    }
}
