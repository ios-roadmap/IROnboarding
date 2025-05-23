//
//  WelcomeTourRouter.swift
//  IROnboarding
//
//  Created by Ömer Faruk Öztürk on 23.05.2025.
//

import SwiftUI

enum WelcomeTourRoute: Hashable {
    case intro
    case completed
}

@MainActor
final class WelcomeTourRouter: ObservableObject {
    @Published var path: [WelcomeTourRoute] = []
    
    func push(_ route: WelcomeTourRoute) {
        path.append(route)
    }
}
