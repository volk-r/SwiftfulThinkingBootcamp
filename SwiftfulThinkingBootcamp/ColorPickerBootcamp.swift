//
//  ColorPickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 22.11.2023.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            ColorPicker(
                selection: $backgroundColor,
                supportsOpacity: true) {
                    Text("Select a color")
                }
                .padding()
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .foregroundStyle(.white)
                .font(.headline)
                .padding(50)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
