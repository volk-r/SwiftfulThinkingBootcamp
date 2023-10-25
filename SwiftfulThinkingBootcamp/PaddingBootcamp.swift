//
//  PaddingAndSpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 25.10.2023.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
//        Text("Hello, World!")
////            .background(.yellow)
//////            .padding()
////            .padding(.all, 10)
////            .background(.blue)
//        
//            .font(.largeTitle)
//            .fontWeight(.semibold)
//            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
////            .background(.red)
//            .padding(.leading, 20)
        
        
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
//                .multilineTextAlignment(.center)
        }
//        .background(.blue)
        .padding()
//        .background(.red)
        .padding(.vertical, 10)
        .background() {
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.3),
                    radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/,
                    x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/,
                    y: 10)
        }
//        .background(.green)
        .padding(.horizontal, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
