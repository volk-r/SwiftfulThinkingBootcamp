//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 17.10.2023.
//

import SwiftUI

struct ColorsBootcamp: View {
    var someColor = #colorLiteral(red: 0.6101708412, green: 0.7510180473, blue: 0.7338043451, alpha: 1)

    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                .primary
//                Color(someColor)
                Color(uiColor: .secondarySystemBackground)
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    ColorsBootcamp()
}
