//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 07.11.2023.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
//            Button("Button") {
////                withAnimation(.default) {
////                withAnimation(Animation.default.delay(2)) {
//                withAnimation(
//                    Animation
//                        .default
////                        .repeatCount(5, autoreverses: false)
//                        .repeatForever(autoreverses: true)
//                ) {
//                    isAnimated.toggle()
//                }
//            }
//            
//            Spacer()
//            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
//                .fill(isAnimated ? .red : .green)
//                .frame(
//                    width: isAnimated ? 100 : 300,
//                    height: isAnimated ? 100 : 300
//                )
//                .rotationEffect(Angle(degrees: isAnimated ? 360: 0))
//                .offset(y: isAnimated ? 300: 0)
//            Spacer()
            
            
            
            Button("Button") {
                isAnimated.toggle()
            }
            
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .red : .green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360: 0))
                .offset(y: isAnimated ? 300: 0)
                .animation(Animation
                    .default
//                        .repeatCount(5, autoreverses: false)
                    .repeatForever(autoreverses: true),
                           value: isAnimated
                )
                Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
