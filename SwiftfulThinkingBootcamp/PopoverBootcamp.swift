//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 11.11.2023.
//

import SwiftUI

// sheets
// animations
// transiotions

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            
            VStack {
                Button("BUTTON") {
                    // METHOD 1 - SHEET
//                    showNewScreen.toggle()
                    // METHOD 2 - TRANSITION
//                    withAnimation(.spring()) {
                        showNewScreen.toggle()
//                    }
                }
                .font(.largeTitle)
                Spacer()
            }
            // METHOD 1 - SHEET
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            
            // METHOD 2 - TRANSITION
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                }
//            }
//            .zIndex(2.0)// not working anymore
            
            // METHOD 3 - ANIMATION OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0: UIScreen.main.bounds.height)
                .animation(.spring(), value: showNewScreen)
        }
    }
}

struct NewScreen: View {
    // METHOD 1 - SHEET
    @Environment(\.presentationMode) var presentationMode
    // METHOD 2 - TRANSITION
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea()
            
            Button {
                // METHOD 1 - SHEET
//                presentationMode.wrappedValue.dismiss()
                // METHOD 2 - TRANSITION
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(20)
            }

        }
    }
}

#Preview {
    PopoverBootcamp()
//    NewScreen()
}
