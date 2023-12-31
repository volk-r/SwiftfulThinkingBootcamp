//
//  ContentView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 14.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.red)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
