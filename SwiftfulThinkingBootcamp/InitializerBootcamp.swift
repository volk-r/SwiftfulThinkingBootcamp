//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 28.10.2023.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if (fruit == .apples) {
            self.title = fruit.rawValue.capitalized
            backgroundColor = .red
        } else {
            self.title = fruit.rawValue.capitalized
            backgroundColor = .orange
        }
    }
    
    enum Fruit: String {
        case apples
        case oranges
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack {
        InitializerBootcamp(count: 55, fruit: .apples)
        InitializerBootcamp(count: 103, fruit: .oranges)
    }
}
