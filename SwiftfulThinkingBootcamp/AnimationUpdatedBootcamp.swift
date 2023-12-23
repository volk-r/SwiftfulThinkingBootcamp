//
//  AnimationUpdatedBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 23.12.2023.
//

import SwiftUI

struct AnimationUpdatedBootcamp: View {
    
    @State private var animate1: Bool = false
    @State private var animate2: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 40) {
                Button("Action 1") {
                    animate1.toggle()
                }
                Button("Action 2") {
                    animate2.toggle()
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: animate1 ? .leading : .trailing)
                        .background(.green)
                        .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: animate2 ? .top : .bottom)
                        .background(.orange)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                .background(.red)
            }
            .animation(.spring, value: animate1)
            .animation(.linear(duration: 0.5), value: animate2)
            // deprecated!
//            .animation(.spring())
        }
    }
}

#Preview {
    AnimationUpdatedBootcamp()
}
