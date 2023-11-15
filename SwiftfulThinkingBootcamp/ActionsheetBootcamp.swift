//
//  ActionsheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 15.11.2023.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    
    @State var showConfirmationDialog: Bool = false
    @State var confirmationDialogOption: ConfirmationDialogOptions = .isOtherPost
    
    enum ConfirmationDialogOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    confirmationDialogOption = .isMyPost
                    showConfirmationDialog.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .tint(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1, contentMode: .fit)
        }
        .confirmationDialog(
            "This is the title?",
            isPresented: $showConfirmationDialog,
            titleVisibility: .visible
        ) {
            ConfirmationDialogButtons(showDeleteButton: confirmationDialogOption == .isMyPost)
        } message: { Text("What would you like to do?") }
    }
    
    struct ConfirmationDialogButtons: View {
        var showDeleteButton: Bool
        
        var body: some View {
            Button("Share") {
                // add code to share post
            }
            
            Button("Report", role: .destructive) {
                // add code to report this post
            }
            
            Button("Delete", role: .destructive) {
                // add code to delete this post
            }
            .disabled(!showDeleteButton)
            
            Button("Cancel", role: .cancel) { }
        }
    }
}


#Preview {
    ActionsheetBootcamp()
}
