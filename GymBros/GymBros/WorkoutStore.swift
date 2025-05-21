//
//  WorkoutStore.swift
//  GymBros
//
//  Created by ak 🕷 on 4/14/25.
//


import Foundation

class WorkoutStore: ObservableObject {
    @Published var savedWorkouts: [Workout] = [] {
        didSet {
            saveToUserDefaults()
        }
    }

    private let key = "saved_workouts"

    init() {
        loadFromUserDefaults()
    }

    func save(_ workout: Workout) {
        if !isSaved(workout) {
            savedWorkouts.append(workout)
        }
    }

    func unsave(_ workout: Workout) {
        savedWorkouts.removeAll { $0.id == workout.id }
    }

    func toggleSave(_ workout: Workout) {
        if isSaved(workout) {
            unsave(workout)
        } else {
            save(workout)
        }
    }

    func isSaved(_ workout: Workout) -> Bool {
        savedWorkouts.contains(where: { $0.id == workout.id })
    }

    private func saveToUserDefaults() {
        if let encoded = try? JSONEncoder().encode(savedWorkouts) {
            UserDefaults.standard.set(encoded, forKey: key)
        }
    }

    private func loadFromUserDefaults() {
        if let data = UserDefaults.standard.data(forKey: key),
           let decoded = try? JSONDecoder().decode([Workout].self, from: data) {
            savedWorkouts = decoded
        }
    }
}

