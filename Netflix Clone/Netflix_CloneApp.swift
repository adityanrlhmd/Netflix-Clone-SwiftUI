//
//  Netflix_CloneApp.swift
//  Netflix Clone
//
//  Created by Aditt on 16/08/23.
//

import SwiftUI

class AppState: ObservableObject {
    @Published var isOnboarding: Bool = true
    @Published var isSplashScreen: Bool = true
}

@main
struct Netflix_CloneApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AppState())
                .preferredColorScheme(.dark)
        }
    }
}
