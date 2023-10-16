//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 16.10.2023.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .continuous)
//        Rectangle()
        RoundedRectangle(cornerRadius: 20)
//            .fill(.blue)
//            .foregroundColor(.green)
//            .stroke(Color.red)
//            .stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, lineWidth: 30)
//            .stroke(.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .bevel, dash: [30]))
            .trim(from: 0.4, to: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
//            .stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, lineWidth: 50)
            .frame(width: 300, height: 200)
    }
}

#Preview {
    ShapesBootcamp()
}
