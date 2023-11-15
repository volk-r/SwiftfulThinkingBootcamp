//
//  ActionsheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 15.11.2023.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    
    @State var showConfirmationDialog: Bool = false
    
    var body: some View {
        Button("Click me") {
            
        }
        .confirmationDialog("LocalizedStringKey", isPresented: $showConfirmationDialog) {
            
        }
    }
}

#Preview {
    ActionsheetBootcamp()
}
