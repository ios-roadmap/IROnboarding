//
//  WelcomeTourCompletedView.swift
//  IROnboarding
//
//  Created by Ömer Faruk Öztürk on 23.05.2025.
//

import SwiftUI

struct WelcomeTourCompletedView: View {
    
    let selectedColor: Color?
    
    init(selectedColor: Color? = nil) {
        self.selectedColor = selectedColor
    }
    
    var body: some View {
        Text("Completed")
            .navigationTitle("Well Done!")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    WelcomeTourCompletedView()
}
