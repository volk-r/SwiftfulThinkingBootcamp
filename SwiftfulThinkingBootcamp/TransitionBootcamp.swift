//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 09.11.2023.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("BUTTON") {
                    withAnimation {
                        showView.toggle()
                    }
                }
                
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
    //                .opacity(showView ? 1 : 0)
//                    .transition(.slide)
//                    .transition(.move(edge: .leading))
//                    .transition(AnyTransition.opacity.animation(.spring))
//                    .transition(AnyTransition.scale.animation(.spring))
                    .transition(.asymmetric(
//                        insertion: .move(edge: .leading),
//                        removal: .move(edge: .bottom)
                        
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeInOut)
                    ))
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
