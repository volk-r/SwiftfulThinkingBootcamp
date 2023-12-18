//
//  SubmitTextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 18.12.2023.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack (spacing: 30) {
            TextField("Placeholder...", text: $text)
                .submitLabel(.route)
                .onSubmit {
                    print("Something to the concole!")
            }
            
            TextField("Placeholder...", text: $text)
                .submitLabel(.join)
                .onSubmit {
                    print("Something to the concole!")
            }
            
            TextField("Placeholder...", text: $text)
                .submitLabel(.next)
                .onSubmit {
                    print("Something to the concole!")
            }
            
            TextField("Placeholder...", text: $text)
                .submitLabel(.search)
                .onSubmit {
                    print("Something to the concole!")
            }
        }
    }
}

#Preview {
    SubmitTextFieldBootcamp()
}
