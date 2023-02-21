//
//  Fruits_AppApp.swift
//  Fruits App
//
//  Created by Lucas Castro on 24/01/23.
//

import SwiftUI

@main
struct Fruits_AppApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
      WindowGroup {
        if isOnboarding {
          OnboardingView()
        } else {
          ContentView()
        }
      }
    }
}
