//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 23.10.2023.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
//        Text("Hello, World!")
//            .background(
////                .red
////                LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: .trailing)
//                Circle()
//                    .fill(LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
//                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//            )
//            .background(
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
//                    .frame(width: 120, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//            )
        
//        Circle()
//            .fill(.pink)
//            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .background(
//                Circle()
//                    .fill(.purple)
//                    .frame(width: 110, height: 110)
//            )
        
//        Rectangle()
//            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//            .overlay(
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 50, height: 50)
//                , alignment: .topLeading
//            )
//            .background(
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
//                , alignment: .bottomTrailing
//            )
        
        let colorStart = Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
        let colorEnd = Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
        let colorShadow = Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 0.5))
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [colorStart, colorEnd]),
                            startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/,
                            endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: colorShadow, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: colorShadow, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 5, y: 5)
                        , alignment: .bottomTrailing
                    )
            )
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
