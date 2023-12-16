//
//  FocusStateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 16.12.2023.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
//    @FocusState private var usernameInFocus: Bool
    @State private var username: String = ""
    
//    @FocusState private var passwordInFocus: Bool
    @State private var password: String = ""
    @FocusState private var filedInFocus: OnboardingField?
    
    var body: some View {
        VStack(spacing: 30) {
            TextField("Add your name here...", text: $username)
//                .focused($usernameInFocus)
                .focused($filedInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(Color.gray.brightness(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            SecureField("Add your password here...", text: $password)
                .focused($filedInFocus, equals: .password)
//                .focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(Color.gray.brightness(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Button("SIGN UP 🚀") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP")
                } else if usernameIsValid {
                    filedInFocus = .password
//                    usernameInFocus = false
//                    passwordInFocus = true
                } else {
                    filedInFocus = .username
//                    usernameInFocus = true
//                    passwordInFocus = false
                }
            }
            
//            Button("TOGGLE FOCUS STATE") {
//                usernameInFocus.toggle()
//            }
        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.usernameInFocus = true
//            }
//        }
    }
}

#Preview {
    FocusStateBootcamp()
}
