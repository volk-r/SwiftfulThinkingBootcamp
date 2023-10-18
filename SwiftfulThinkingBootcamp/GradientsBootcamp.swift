//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 18.10.2023.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        let firstColor = Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        let secondColor = Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                LinearGradient(
//                    gradient: Gradient(colors: [firstColor, secondColor]),
//                    startPoint: .topLeading,
//                    endPoint: .bottom)
//                RadialGradient(
//                    gradient: Gradient(colors: [firstColor, secondColor]),
//                    center: .trailing,
//                    startRadius: 5,
//                    endRadius: 200)
                AngularGradient.init(
                    gradient: Gradient(colors: [firstColor, secondColor]),
                    center: .topLeading,
                    angle: .degrees(180 + 45))
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsBootcamp()
}
