//
//  IntroView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 07.12.2023.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("sign_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            let window = UIApplication.shared.connectedScenes.first as? UIWindowScene
            let screenSize = window?.screen.bounds
            
            RadialGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))]),
                center: .topLeading,
                startRadius: 5,
                endRadius: screenSize?.height ?? 0)
            .ignoresSafeArea()
            
            if currentUserSignedIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }
        }
    }
}

#Preview {
    IntroView()
}
