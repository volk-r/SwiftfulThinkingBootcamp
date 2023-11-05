//
//  ExtractSubviewsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 05.11.2023.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    
    let backgroundColor = Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
    
    var body: some View {
        ZStack {
            Color(backgroundColor).ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 1, color: .red)
            MyItem(title: "Oranges", count: 10, color: .orange)
            MyItem(title: "Bananas", count: 34, color: .yellow)
        }
    }
}

#Preview {
    ExtractSubviewsBootcamp()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
