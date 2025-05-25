//
//  WelcomeTourIntroView.swift
//  IROnboarding
//
//  Created by Ömer Faruk Öztürk on 23.05.2025.
//

import SwiftUI
internal import IRStyleKit

struct WelcomeTourIntroView: View {
    @EnvironmentObject private var router: WelcomeTourRouter
    
    var text: String
    var keywords: [String]
    var buttonName: String
    
    var body: some View {
        VStack(spacing: 24) {
            Text(text)
            
                .baselineOffset(6)
                .frame(maxHeight: .infinity)
            
            Text(buttonName)
                .callToActionButtonDesign()
                .anyButton(option: .plain, action: {
                    router.push(.colorTheme)
                })
        }
        .padding(24)
        .font(.title3)
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    WelcomeTourIntroView(
        text: """
    Make your own avatars and chat with them!
    
    Have real conversation with AI-generated responses.
    """,
        keywords: [
            "avatars",
            "real conversation"
        ],
        buttonName: "Continue"
    )
}
