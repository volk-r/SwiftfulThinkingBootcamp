//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 30.10.2023.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header: 
                                    Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.blue)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }
                    
                    Section(header:
                                    Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.red)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(.green)
                                .frame(height: 150)
                        }
                    }
            })
            
            
//            Rectangle()
//                .fill(.white)
//                .frame(height: 400)
//            
//            LazyVGrid(columns: columns) {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .frame(height: 150)
//                }
//            }
        }
    }
}

#Preview {
    GridBootcamp()
}
