//
//  TarnaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 06.11.2023.
//

import SwiftUI

struct TarnaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "STARTING STATE!" : "ENDING STATE.")
            
            RoundedRectangle(cornerRadius: isStartingState ? /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/ : 0)
                .fill(isStartingState ? .red: .blue)
                .frame(
                    width: isStartingState ? 300 : 50,
                    height: isStartingState ? 150 : 50
                )
            
            Spacer()
        }
    }
}

#Preview {
    TarnaryBootcamp()
}
