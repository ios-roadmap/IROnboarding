//
//  WelcomeTourView.swift
//  IROnboarding
//
//  Created by Ömer Faruk Öztürk on 22.05.2025.
//

import SwiftUI
import IRStyleKit

struct WelcomeTourView: View {
    @State var showSignInView: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                AsyncImageView()
                    .ignoresSafeArea(.all, edges: .top)
                
                titleSection
                    .padding(.top, 24)
               
                ctaButton
                    .padding(16)
                
                policyLinks
                
            }
            .sheet(
                isPresented: $showSignInView,
                content: {
                    Text("ÖMER")
                        .presentationDetents([.medium])
            })
        }
    }
    
    private var titleSection: some View {
        VStack {
            Text("iOSRoadmap")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("Master iOS: From A to Z")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
    
    private var ctaButton: some View {
        VStack(spacing: 8) {
            Text("Get Started")
                .callToActionButtonDesign()
                .anyButton(option: .rotate(.spin)) {
                    
                }
            
            Text("Already have an account? Sign in!")
                .underlineTextButtonDesign()
                .anyButton {
                    showSignInView = true
                }
        }
    }
    
    private var policyLinks: some View {
        HStack(spacing: 8) {
            Link(destination: .init(string: "google.com")!) {
                Text("Terms of Service")
            }
            
            Circle()
                .fill(Color.accent)
                .frame(width: 4, height: 4)
            
            Link(destination: .init(string: "google.com")!) {
                Text("Privacy Policy")
            }
        }
    }
}

#Preview {
    WelcomeTourView()
        .background(Color.green.opacity(0.25))
}
