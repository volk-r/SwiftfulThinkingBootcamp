//
//  TextEditorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 18.11.2023.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "This is the starting text."
    @State var savedText: String = ""
    
    let editoBackgroundColor: Color = Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1))
    
    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
//                    .foregroundStyle(.white)
                    .colorMultiply(editoBackgroundColor)
                    .clipShape(RoundedRectangle(cornerRadius: 10))

                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
                
                Text(savedText)
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextEditor Bootcamp!")
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
