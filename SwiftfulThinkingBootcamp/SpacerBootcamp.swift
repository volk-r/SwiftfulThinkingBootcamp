//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 26.10.2023.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
//        HStack(spacing: 0) {
//            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
//                .frame(height: 10)
//                .background(.orange)
//            
//            Rectangle()
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//            
//            Rectangle()
//                .fill(.red)
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(.orange)
//            
//            Rectangle()
//                .fill(.green)
//                .frame(width: 50, height: 50)
//            
//            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
//                .frame(height: 10)
//                .background(.orange)
//        }
//        .background(.yellow)
//        .padding(.horizontal, 200)
//        .background(.blue)
        
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
//                    .frame(height: 10)
//                    .background(.orange)
                Image(systemName: "gear")
            }
            .font(.title)
//            .background(.yellow)
            .padding(.horizontal)
//            .background(.blue)
            
            Spacer()
//                .frame(width: 10)
//                .background(.orange)
            
            Rectangle()
                .frame(height: 50)
        }
    }
}

#Preview {
    SpacerBootcamp()
}
