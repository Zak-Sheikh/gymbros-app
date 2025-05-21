//
//  WelcomePage.swift
//  GymBros
//
//  Created by Zak Sheikh #2 on 4/4/25.
//

import SwiftUI

struct WelcomePage: View {
    @Binding var showWelcome: Bool
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue.opacity(0.7), .white], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
                ZStack {
                    Circle()
                        .frame(width: 180, height: 180)
                        .foregroundStyle(.white.opacity(0.7))
                    
                    Image(systemName: "dumbbell.fill")
                        .font(.system(size: 70))
                        .foregroundStyle(.blue)
                }
                
                Text("GymBros")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.blue)
                    
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                            showWelcome = false
                        }
                    }
            }
        }
        
    }
}

#Preview {
    WelcomePage(showWelcome: .constant(true))
}
