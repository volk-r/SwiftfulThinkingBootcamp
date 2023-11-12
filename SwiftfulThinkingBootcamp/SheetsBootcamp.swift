//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 11.11.2023.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .padding(20)
                    .font(.headline)
                    .background(Color.white.cornerRadius(10))
                
            }
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
            .sheet(isPresented: $showSheet, content: {
                // DO NOT ADD CONDITIONAL LOGIC
                SecondScreen()
            })
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            
            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .padding(20)
                    .font(.largeTitle)
            }
        }
    }
}

#Preview {
    SheetsBootcamp()
//    SecondScreen()
}
