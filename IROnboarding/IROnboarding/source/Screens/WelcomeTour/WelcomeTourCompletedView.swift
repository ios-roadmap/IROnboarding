//
//  WelcomeTourCompletedView.swift
//  IROnboarding
//
//  Created by Ömer Faruk Öztürk on 23.05.2025.
//

import SwiftUI
internal import IRCore
internal import IRStyleKit

struct WelcomeTourCompletedView: View {
    
    @Environment(AppState.self) private var appState
    
    let selectedColor: Color?
    
    init(selectedColor: Color? = nil) {
        self.selectedColor = selectedColor
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Setup complete!")
                .anyTextStyle(
                    font: .largeTitle,
                    weight: .semibold,
                    color: selectedColor ?? Color.accent
                )
            
            Text("We've set up your profile and you're ready to start chatting.")
                .anyTextStyle(
                    font: .title,
                    weight: .medium
                )
        }
        .frame(maxHeight: .infinity)
        .safeAreaInset(edge: .bottom) {
            CustomizableButton(
                name: "Finish",
                handler: {
                    onFinishButtonPressed()
                })
            .padding(16)
        }
        .toolbar(.hidden, for: .navigationBar)
    }
    
    private func onFinishButtonPressed() {
        appState.updateDashboardVisibility(to: true)
    }
}

#Preview {
    NavigationStack {
        WelcomeTourCompletedView(selectedColor: .orange)
            .environment(AppState())
    }
}
