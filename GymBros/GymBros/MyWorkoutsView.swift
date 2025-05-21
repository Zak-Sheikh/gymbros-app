//
//  MyWorkoutsView.swift
//  GymBros
//
//  Created by Zak Sheikh #2 on 4/5/25.
//

import SwiftUI

struct MyWorkoutsView: View {
    @ObservedObject var store: WorkoutStore

    var body: some View {
        NavigationStack{
            VStack(alignment: .leading) {
                
                if store.savedWorkouts.isEmpty {
                    Text("No saved workouts yet.")
                        .foregroundColor(.gray)
                        .padding()
                } else {
                    List {
                        ForEach(store.savedWorkouts) { workout in
                            NavigationLink(destination:  WorkoutDetailView(workout: workout, store: store)) {
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(workout.name)
                                        .font(.headline)
                                    Text(workout.details)
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                                .padding(.vertical, 5)
                            }
                        }
                        .onDelete { indexSet in
                            indexSet.map { store.savedWorkouts[$0] }.forEach(store.unsave)
                        }
                    }
                }
            }
            .navigationTitle("My Workouts")
        }
    }
}


#Preview {
    MyWorkoutsView(store: WorkoutStore())
}
