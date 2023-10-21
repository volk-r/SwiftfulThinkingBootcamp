//
//  ImageBootvamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 21.10.2023.
//

import SwiftUI

struct ImageBootvamp: View {
    var body: some View {
        Image("kristin")
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .scaledToFit()
            .scaledToFill()
            .frame(width: 300, height: 200)
//            .foregroundColor(.blue)
//            .cornerRadius(30)
//            .clipped()
//            .clipShape(
////                Circle()
//                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
////                Ellipse()
//            )
    }
}

#Preview {
    ImageBootvamp()
}
