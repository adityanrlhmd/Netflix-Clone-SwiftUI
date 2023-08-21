//
//  SplashScreenView.swift
//  Netflix Clone
//
//  Created by Aditt on 17/08/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct SplashScreenView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color.black
                    .ignoresSafeArea()
                
                AnimatedImage(url: getLogoUrl())
                    .resizable()
                    .scaledToFill()
                    .frame(width: geo.size.width)
                    .ignoresSafeArea()
            }
        }
    }
    
    func getLogoUrl()->URL {
        let bundle = Bundle.main.path(forResource: "logo-animation", ofType: "gif")
        let url = URL(fileURLWithPath: bundle ?? "")
        
        return url
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
