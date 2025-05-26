//
//  MainView.swift
//  GymBros
//
//  Created by Zak Sheikh #2 on 4/5/25.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var store: WorkoutStore

    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Image("Body")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 600, height: 800)

                    // Left Shoulder
                    NavigationLink(destination: WorkoutListView(title: "Shoulder Workouts", workouts: shoulderWorkouts, store: store)) {
                        Circle()
                            .fill(Color.blue.opacity(0.3))
                            .frame(width: 60, height: 60)
                    }
                    .position(x: 225, y: 165)

                    // Right Shoulder
                    NavigationLink(destination: WorkoutListView(title: "Shoulder Workouts", workouts: shoulderWorkouts, store: store)) {
                        Circle()
                            .fill(Color.blue.opacity(0.3))
                            .frame(width: 60, height: 60)
                    }
                    .position(x: 365, y: 165)

                    // Left Chest
                    NavigationLink(destination: WorkoutListView(title: "Chest Workouts", workouts: chestWorkouts, store: store)) {
                        Circle()
                            .fill(Color.green.opacity(0.3))
                            .frame(width: 60, height: 60)
                    }
                    .position(x: 260, y: 220)

                    // Right Chest
                    NavigationLink(destination: WorkoutListView(title: "Chest Workouts", workouts: chestWorkouts, store: store)) {
                        Circle()
                            .fill(Color.green.opacity(0.3))
                            .frame(width: 60, height: 60)
                    }
                    .position(x: 325, y: 220)

                    // Left Arm
                    NavigationLink(destination: WorkoutListView(title: "Arm Workouts", workouts: armWorkouts, store: store)) {
                        Circle()
                            .fill(Color.black.opacity(0.3))
                            .frame(width: 60, height: 60)
                    }
                    .position(x: 170, y: 195)

                    // Right Arm
                    NavigationLink(destination: WorkoutListView(title: "Arm Workouts", workouts: armWorkouts, store: store)) {
                        Circle()
                            .fill(Color.black.opacity(0.3))
                            .frame(width: 60, height: 60)
                    }
                    .position(x: 420, y: 195)
                    
                    // Core
                    NavigationLink(destination: WorkoutListView(title: "Core Workouts", workouts: coreWorkouts, store: store)) {
                        Circle()
                            .fill(Color.orange.opacity(0.3))
                            .frame(width: 100, height: 100)
                    }
                    .position(x: 290, y: 300)
                }

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    MainView(store: WorkoutStore())
}
