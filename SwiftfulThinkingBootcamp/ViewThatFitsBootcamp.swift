//
//  ViewThatFitsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 26.12.2023.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            ViewThatFits {
                Text("This is some text that I would like to display to the user!")
                Text("This is some text that I would like to display!")
                Text("This is some text!")
            }
        }
        .frame(height: 300)
        .padding(16)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
