//
//  WelcomeTourIntroView.swift
//  IROnboarding
//
//  Created by Ömer Faruk Öztürk on 23.05.2025.
//

import SwiftUI

struct WelcomeTourIntroView: View {
    @EnvironmentObject private var router: WelcomeTourRouter
    
    var body: some View {
        VStack(spacing: 24) {
            Text("Hello, World!")
            Button("Continue") {
                router.push(.completed)
            }
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle("Introduction")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    WelcomeTourIntroView()
}
