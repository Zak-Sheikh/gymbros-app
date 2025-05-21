//
//  WorkoutListView.swift
//  GymBros
//
//  Created by ak 🕷 on 5/4/25.
//

import SwiftUI
import AVKit

struct WorkoutListView: View {
    let title: String
    let workouts: [Workout]
    @ObservedObject var store: WorkoutStore

    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
                .bold()
                .padding(.top)

            List(workouts) { workout in
                NavigationLink(destination: WorkoutDetailView(workout: workout, store: store)) {
                    Text(workout.name)
                        .font(.headline)
                }
                .padding(.vertical, 4)
            }
        }
        .padding()
        .navigationTitle(title)
    }
}

let chestWorkouts: [Workout] = [
    Workout(name: "Bench Press", details: "A staple chest compound lift. Targets the pectorals, triceps, and shoulders.", imageName: "bench_press", videoName: "bench_demo", suggestedReps: "3 sets of 8–10 reps"),
    Workout(name: "Incline Bench Press", details: "Focuses on the upper chest. Provides a deeper stretch than barbells.", imageName: "incline_press", videoName: "incline_demo", suggestedReps: "3 sets of 10 reps"),
    Workout(name: "Chest Fly", details: "Isolates the pectorals. Best performed with dumbbells or cables.", imageName: "chest_fly", suggestedReps: "3 sets of 12–15 reps"),
    Workout(name: "Push-Ups", details: "Bodyweight chest builder. Modifiable for all skill levels.", videoName: "pushup_demo", suggestedReps: "4 sets to failure"),
    Workout(name: "Cable Crossover", details: "Constant tension exercise ideal for chest shaping and definition.", imageName: "cable_crossover", suggestedReps: "3 sets of 15 reps")
]

let shoulderWorkouts: [Workout] = [
    Workout(name: "Overhead Press", details: "A compound movement targeting the deltoids, triceps, and upper chest.", imageName: "overhead_press", videoName: "overhead_demo", suggestedReps: "3 sets of 6–8 reps"),
    Workout(name: "Lateral Raises", details: "Isolates the lateral deltoids. Use light weight and strict form.", imageName: "lateral_raises", videoName: "lateral_demo", suggestedReps: "3 sets of 12–15 reps"),
    Workout(name: "Front Raises", details: "Targets the anterior delts. Often done with dumbbells or a plate.", imageName: "front_raises", suggestedReps: "3 sets of 10–12 reps"),
    Workout(name: "Reverse Flys", details: "Great for rear delts and posture support.", imageName: "reverse_flys", suggestedReps: "3 sets of 12–15 reps"),
    Workout(name: "Arnold Press", details: "Named after Arnold Schwarzenegger, targets all deltoid heads.", imageName: "arnold_press", suggestedReps: "3 sets of 8–10 reps")
]

let armWorkouts: [Workout] = [
    Workout(name: "Bicep Curls", details: "Isolation exercise for biceps. Use dumbbells or a barbell.", imageName: "bicep_curls", suggestedReps: "3 sets of 10–12 reps"),
    Workout(name: "Tricep Dips", details: "Targets the triceps. Use parallel bars or a bench.", imageName: "triceps_dips", suggestedReps: "3 sets of 8–12 reps"),
    Workout(name: "Hammer Curls", details: "Works both biceps and brachialis. Neutral grip recommended.", imageName: "hammer_curls", suggestedReps: "3 sets of 10–12 reps"),
    Workout(name: "Skull Crushers", details: "Lying tricep extension. Use an EZ bar for comfort.", imageName: "skull_crushers", suggestedReps: "3 sets of 10 reps"),
    Workout(name: "Concentration Curls", details: "Focuses on peak contraction of the biceps.", imageName: "conc_curls", suggestedReps: "3 sets of 12–15 reps")
]

