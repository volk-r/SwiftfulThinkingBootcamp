//
//  GroupBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 23.12.2023.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            Group {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .foregroundStyle(.green)
            .font(.caption)
        }
        .foregroundStyle(.red)
        .font(.headline)
    }
}

#Preview {
    GroupBootcamp()
}
