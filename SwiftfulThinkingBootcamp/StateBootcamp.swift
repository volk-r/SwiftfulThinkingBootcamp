//
//  STateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 04.11.2023.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = .green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea(.all)
            
            // content
            VStack (spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("BUTTON 1") {
                        backgroundColor = .red
                        myTitle = "BUTTON 1 was pressed"
                        count += 1
                    }
                    
                    Button("BUTTON 2") {
                        backgroundColor = .purple
                        myTitle = "BUTTON 2 was pressed"
                        count += -1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
