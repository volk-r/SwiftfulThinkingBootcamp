//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 29.10.2023.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//                    Text("Index is: \(index)")
//                }
//            }\()

            ForEach(data.indices, id: \.self) {
                Text("\(data[$0]): \($0)")
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
