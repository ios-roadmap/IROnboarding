//
//  WelcomeTourView.swift
//  IROnboarding
//
//  Created by Ömer Faruk Öztürk on 22.05.2025.
//

import SwiftUI
internal import IRStyleKit

public struct WelcomeTourView: View {
    @State var showSignInView: Bool = false
    
    @StateObject private var router = WelcomeTourRouter()
    
    public init() { }
    
    public var body: some View {
        NavigationStack(path: $router.path) {
            VStack {
                AsyncImageView()
//                Image(uiImage: .iOSRoadmap)
//                    .resizable()
                    .ignoresSafeArea(.all, edges: .top)
                
                titleSection
                    .padding(.top, 24)
               
                ctaButton
                    .padding(16)
                
                PolicyLinksView(
                    termsURLString: "https://google.com/terms",
                    privacyURLString: "https://google.com/privacy"
                )
            }
            .sheet(
                isPresented: $showSignInView,
                content: {
                    Text("ÖMER")
                        .presentationDetents([.medium])
            })
            .navigationDestination(for: WelcomeTourRoute.self) { newValue in
                switch newValue {
                case .intro:
                    let text = "Make your own avatars and chat with them!\n\nHave real conversation with AI generated responses."
                    
                    WelcomeTourIntroView(
                        text: text,
                        keywords: [
                            "avatars",
                            "real conversation"
                        ],
                        buttonName: "Continue"
                    )
                    .environmentObject(router)
                case .colorTheme:
                    ColorThemeView(
                        palette: [
                            .red, .green, .orange, .blue, .mint, .purple, .cyan, .teal, .indigo
                        ],
                        onContinue: { color in
                            router.push(.completed(color))
                        }
                    )
                        .environmentObject(router)
                case .completed(color: let color):
                    WelcomeTourCompletedView(
                        selectedColor: color
                    )
                    .environmentObject(router)
                }
            }
        }
    }
    
    private var titleSection: some View {
        VStack {
            Text("iOSRoadmap")
                .anyTextStyle(
                    font: .largeTitle,
                    weight: .semibold
                )
            
            Text("Master iOS: From A to Z")
                .anyTextStyle(
                    font: .caption,
                    color: Color.secondary
                )
        }
    }
    
    private var ctaButton: some View {
        VStack(spacing: 8) {
            Text("Get Started")
                .callToActionButtonDesign()
                .anyButton(option: .plain) {
                    ctaPressed()
                }
            
            Text("Already have an account? Sign in!")
                .underlineTextButtonDesign()
                .anyButton {
                    signInPressed()
                }
        }
    }
    
    func ctaPressed() {
        router.push(.intro)
    }
    
    func signInPressed() {
        showSignInView = true
    }
}

#Preview {
    NavigationStack {
        WelcomeTourView()
    }
}
