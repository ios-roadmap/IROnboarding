//
//  ColorThemeView.swift
//  IROnboarding
//
//  Created by Ömer Faruk Öztürk on 24.05.2025.
//

import SwiftUI
internal import IRStyleKit

struct ColorThemeView: View {

    @State private var selectedColor: Color?
    let palette: [Color]
    let onContinue: (Color) -> Void

    init(
        palette: [Color] = [
            .red, .green, .orange, .blue, .mint,
            .purple, .cyan, .teal, .indigo
        ],
        onContinue: @escaping (Color) -> Void
    ) {
        self.palette   = palette
        self.onContinue = onContinue
    }

    var body: some View {
        ScrollView {
            ColorGridView(selectedColor: $selectedColor, colors: palette)
                .padding(16)
        }
        .safeAreaInset(edge: .bottom) {
            if let colour = selectedColor {
                Text("Continue")
                    .callToActionButtonDesign()
                    .padding()
                    .anyButton { onContinue(colour) }
                    .transition(.move(edge: .bottom))
            }
        }
        .toolbar(.hidden, for: .navigationBar)
        .animation(.easeInOut, value: selectedColor)
    }
}


#Preview {
    NavigationStack {
        ColorThemeView(
            palette: [
                .red, .black, .yellow
            ]) { color in
                
            }
    }
}
