//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 25.11.2023.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
//                "\(sliderValue)"
                String(format: "%0.0f", sliderValue)
            )
            .foregroundStyle(color)
            .font(.title)
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 0...100)
//            Slider(value: $sliderValue, in: 1...5, step: 1.0)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                label: {
                    Text("Title")
                },
                minimumValueLabel: {
                    Text("1")
                        .font(.largeTitle)
                        .foregroundStyle(.orange)
                },
                maximumValueLabel: {
                    Text("5")
                },
                onEditingChanged: { _ in
                    color = .green
                })
                .tint(.red)
        }
    }
}

#Preview {
    SliderBootcamp()
}
