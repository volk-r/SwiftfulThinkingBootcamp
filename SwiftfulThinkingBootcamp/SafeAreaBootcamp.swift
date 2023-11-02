//
//  SafeArea.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 01.11.2023.
//

import SwiftUI

struct SafeArea: View {
    
    // TODO: - The background is now extending to the edges of the device without having to specify ignore safe area.
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Title goed here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
//        .background(.blue)
        .background(
            Color.red
                .ignoresSafeArea(edges: .all)
        )
        
//        ZStack {
//            // background
//            Color.blue
//                .ignoresSafeArea(.all)
//
//            // foreground
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }
//            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
//            .background(.red)
//        }
    }
}

#Preview {
    SafeArea()
}
