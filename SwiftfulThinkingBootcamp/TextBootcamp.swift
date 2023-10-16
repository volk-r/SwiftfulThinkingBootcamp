//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 15.10.2023.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/.uppercased())
//            .font(.largeTitle)
            .font(.system(size: 34, weight: .bold, design: .monospaced))
            .fontWeight(.semibold)
//            .strikethrough()
            .strikethrough(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: .red)
            .italic()
            .underline(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: Color.green)
            .kerning(7)
    }
}

#Preview {
    TextBootcamp()
}
