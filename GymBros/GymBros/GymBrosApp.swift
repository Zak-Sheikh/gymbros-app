//
//  GymBrosApp.swift
//  GymBros
//
//  Created by Zak Sheikh #2 on 3/26/25.
//

import SwiftUI

@main
struct GymBrosApp: App {
    @State private var showWelcome = true
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some Scene {
        WindowGroup {
            Group{
                if showWelcome {
                    WelcomePage(showWelcome: $showWelcome)
                } else {
                    MainTabView()
                }
            }
            .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
