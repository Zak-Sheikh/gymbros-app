//
//  Workout.swift
//  GymBros
//
//  Created by ak 🕷 on 4/14/25.
//


import Foundation

struct Workout: Identifiable, Equatable, Codable {
    let id: UUID
    let name: String
    let details: String
    var imageName: String?
    var videoName: String?
    var suggestedReps: String?

    init(
        id: UUID = UUID(),
        name: String,
        details: String,
        imageName: String? = nil,
        videoName: String? = nil,
        suggestedReps: String? = nil
    ) {
        self.id = id
        self.name = name
        self.details = details
        self.imageName = imageName
        self.videoName = videoName
        self.suggestedReps = suggestedReps
    }
}

