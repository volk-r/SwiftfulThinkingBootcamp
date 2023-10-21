//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 19.10.2023.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        let imageColor = Color(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1))
        Image(systemName: "gauge.with.dots.needle.bottom.50percent.badge.plus")
            .renderingMode(.original)
            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .scaledToFit()
            .scaledToFill()
//            .font(.largeTitle)
//            .font(.system(size: 200))
            .foregroundColor(imageColor)
            .frame(width: 300, height: 300)
//            .clipped()
    }
}

#Preview {
    IconsBootcamp()
}
