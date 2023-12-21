//
//  ResizableSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 21.12.2023.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click me!") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextScreen(detents: $detents)
//                .presentationDetents([.fraction(0.1), .height(300), .medium, .large])
//                .presentationDetents([.medium, .large], selection: $detents)
//                .presentationDetents([.height(300)])
//                .presentationDetents([.medium, .large])
//                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled()
        }
        .onAppear{
            showSheet = true
        }
    }
}

struct MyNextScreen: View {
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
//            Text("Hello, world!")
            
            VStack(spacing: 30) {
                Button("20 %") {
                    detents = .fraction(0.2)
                }
                
                Button("MEDIUM") {
                    detents = .medium
                }
                
                Button("LARGE") {
                    detents = .large
                }
                
                Button("600 PX") {
                    detents = .height(600)
                }
            }
        }
        .presentationDetents([.fraction(0.2), .height(600), .medium, .large], selection: $detents)
        .presentationDragIndicator(.hidden)
    }
}

#Preview {
    ResizableSheetBootcamp()
}
