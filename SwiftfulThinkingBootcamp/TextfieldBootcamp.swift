//
//  TextfiledBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 18.11.2023.
//

import SwiftUI

struct TextfieldBootcamp: View {
    
    @State var textfiledText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Type something here...", text: $textfiledText)
//                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundStyle(.red)
                    .font(.headline)
                
                Button(action: {
                    if (textIsAppropriate()) {
                        saveText()
                    }
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundStyle(.white)
                        .font(.headline)
                })
//                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp!")
        }
    }
    
    func textIsAppropriate() -> Bool
    {
        if (textfiledText.count >= 3) {
            return true
        }
        
        return false
    }
    
    func saveText() {
        dataArray.append(textfiledText)
        textfiledText = ""
    }
}

#Preview {
    TextfieldBootcamp()
}
