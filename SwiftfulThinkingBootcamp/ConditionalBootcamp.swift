//
//  СщтвшешщтфдИщщесфьз.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 06.11.2023.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("IS LOADING: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
            
//            Button("Circle Button: \(showCircle.description)") {
//                showCircle.toggle()
//            }
//            Button("Rectangle Button: \(showRectangle.description)") {
//                showRectangle.toggle()
//            }
//            
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//            }
//            
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//            }
//            
//            if showCircle || showRectangle {
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//            }
            
            Spacer()
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
