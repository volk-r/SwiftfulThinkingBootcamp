//
//  StepperBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 23.11.2023.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValie: Int = 10
    @State var widthIncrement: CGFloat = 10
    
    var body: some View {
        VStack {
            Stepper("Stepper \(stepperValie)", value: $stepperValie)
                .padding(50)
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/ + widthIncrement, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
            Stepper("Stepper 2") {
                // increment
                incrementWidth(amount: 100)
            } onDecrement: {
                // decrement
                incrementWidth(amount: -100)
            }
            .padding(50)
        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeOut) {
            widthIncrement += amount
        }
    }
}

#Preview {
    StepperBootcamp()
}
