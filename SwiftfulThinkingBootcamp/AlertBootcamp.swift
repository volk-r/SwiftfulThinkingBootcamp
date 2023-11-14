//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 14.11.2023.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var backgroundColor: Color = .yellow
    
    enum MyAlerts {
        case success
        case error

        var alertDescription: (title: String, message: String) {
           switch self {
           case .success:
                return ("Successfully uploaded video 🥳", "Your video is now public!")
            case .error:
               return ("ERROR UPLOADING VIDEO", "The video could not be uploaded")
           }
        }
    }
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Button("BUTTON 1") {
                    alertType = .error
//                    alertTitle = "ERROR UPLOADING VIDEO"
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                Button("BUTTON 2") {
                    alertType = .success
//                    alertTitle = "Successfully uploaded video 🥳"
//                    alertMessage = "Your video is now public!"
                    showAlert.toggle()
                }
            }
            .alert(
                Text(alertType?.alertDescription.title ?? "ERROR"),
                isPresented: $showAlert)
            {
//                Button("Delete", role: .destructive) {'
//                    backgroundColor = .red
//                }
                Button("Ok", role: .cancel) {
                    if alertType == .success {
                        backgroundColor = .green
                    }
                }
            } message: {
                Text(alertType?.alertDescription.message ?? "Something went wrong")
            }
        }
    }
}

#Preview {
    AlertBootcamp()
}
