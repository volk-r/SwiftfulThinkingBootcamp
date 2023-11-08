//
//  AnimationTimingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 08.11.2023.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimation: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimation.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimation ? 350 : 50, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.7,
                    blendDuration: 1.0),
                           value: isAnimation)
//                .animation(Animation.linear(duration: timing), value: isAnimation)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimation ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing), value: isAnimation)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimation ? 350 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing), value: isAnimation)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimation ? 350 : 50, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//                .animation(Animation.easeOut(duration: timing), value: isAnimation)
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
