//
//  SettingsView.swift
//  GymBros
//
//  Created by Zak Sheikh #2 on 4/5/25.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false

    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Appearance")) {
                    Toggle("Night Mode", isOn: $isDarkMode)
                }
            }
            .navigationTitle("Settings")
        }
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

#Preview {
    SettingsView()
}
