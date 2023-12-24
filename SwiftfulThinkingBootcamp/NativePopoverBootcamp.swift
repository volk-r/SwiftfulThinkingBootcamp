//
//  NativePopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 24.12.2023.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    
    @State private var showPopever: Bool = false
    @State private var feedbackOprions: [String] = [
        "Very Good 🥳",
        "Averega 🤨",
        "Verry bad 😡"
    ]
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Button("CLICK ME") {
                    showPopever.toggle()
                }
                .padding(20)
                .background(.yellow)
                .popover(isPresented: $showPopever, attachmentAnchor: .point(.top), content: {
                    ScrollView{
                        VStack (alignment: .leading, spacing: 12, content: {
                            ForEach(feedbackOprions, id: \.self) { option in
                                Button(option) {
                                    
                                }
                                
                                if (option != feedbackOprions.last) {
                                    Divider()
                                }
                            }
                        })
                        .padding(20)
                    }
                    .presentationCompactAdaptation(.popover)
                })
            }
        }
    }
}

#Preview {
    NativePopoverBootcamp()
}
