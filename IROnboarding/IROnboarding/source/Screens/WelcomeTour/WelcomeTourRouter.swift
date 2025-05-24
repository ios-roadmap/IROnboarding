//
//  WelcomeTourRouter.swift
//  IROnboarding
//
//  Created by Ömer Faruk Öztürk on 23.05.2025.
//

import SwiftUI

enum WelcomeTourRoute: Hashable {
    case intro
    case colorTheme
    case completed(Color)   // non-optional; only push when a colour exists
}

@MainActor
final class WelcomeTourRouter: ObservableObject {
    @Published var path: [WelcomeTourRoute] = []
    func push(_ route: WelcomeTourRoute) { path.append(route) }
}
