//
//  MainTabView.swift
//  GymBros
//
//  Created by Zak Sheikh #2 on 4/5/25.
//

import SwiftUI

struct MainTabView: View {
    @StateObject var store = WorkoutStore()

    var body: some View {
        TabView {
            MainView(store: store)
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }

            MyWorkoutsView(store: store)
                .tabItem {
                    Label("My Workouts", systemImage: "heart.fill")
                }

            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
        }
    }
}

#Preview {
    MainTabView()
}

