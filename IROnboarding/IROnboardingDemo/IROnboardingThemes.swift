//
//  IROnboardingThemes.swift
//  IROnboardingDemo
//
//  Created by Ömer Faruk Öztürk on 22.05.2025.
//

import SwiftUI
import IROnboarding

struct IROnboardingThemes: View {
    @State var currentTheme: OnboardingTheme = .welcomeTour
    
    var body: some View {
        currentTheme.view
    }
}

#Preview {
    IROnboardingThemes(currentTheme: .welcomeTour)
}
