//
//  WorkoutDetailView.swift
//  GymBros
//
//  Created by Zak Sheikh #2 on 4/28/25.
//

import SwiftUI
import AVKit

struct WorkoutDetailView: View {
    let workout: Workout
    @ObservedObject var store: WorkoutStore

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                TabView {
                    if let imageName = workout.imageName {
                        Image(imageName)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(12)
                    }

                    if let videoName = workout.videoName,
                       let url = Bundle.main.url(forResource: videoName, withExtension: "mp4") {
                        VideoPlayer(player: AVPlayer(url: url))
                            .frame(height: 250)
                            .cornerRadius(12)
                    }
                }
                .tabViewStyle(.page)
                .frame(height: 250)

                Text(workout.name)
                    .font(.largeTitle)
                    .bold()

                Text(workout.details)
                    .font(.body)

                if let reps = workout.suggestedReps {
                    Text("Suggested Reps: \(reps)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }

                Button(action: {
                    if !store.savedWorkouts.contains(where: { $0.id == workout.id }) {
                        store.savedWorkouts.append(workout)
                    }
                }) {
                    HStack {
                        Image(systemName: store.savedWorkouts.contains(where: { $0.id == workout.id }) ? "heart.fill" : "heart")
                            .foregroundColor(.red)
                        Text(store.savedWorkouts.contains(where: { $0.id == workout.id }) ? "Saved" : "Save Workout")
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(12)
                }
            }
            .padding()
        }
        .navigationTitle(workout.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
