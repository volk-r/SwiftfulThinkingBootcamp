//
//  ToolbarBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 20.12.2023.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State private var text: String = ""
    @State private var path: [String] = []
    
    var body: some View {
        NavigationStack(path: $path) {
            ZStack {
                Color.white.ignoresSafeArea()
                
                ScrollView {
                    TextField("Placeholder", text: $text)
                    
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .foregroundStyle(.blue)
                            .frame(width: 200, height: 200)
                    }
                }
            }
            .navigationTitle("Toolbar")
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill"),
//                trailing: Image(systemName: "gear")
//            )
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .topBarTrailing) {
//                    HStack {
//                        Image(systemName: "house.fill")
                        Image(systemName: "gear")
//                    }
                }
            }
//            .toolbar(.hidden, for: .automatic)
//            .toolbarBackground(.hidden, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    path.append("Screen 1")
                }
                Button("Screen 2") {
                    path.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New screen \(value)")
            }
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
