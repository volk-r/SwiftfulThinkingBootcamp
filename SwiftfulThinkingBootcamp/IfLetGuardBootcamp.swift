//
//  IfLetGuardBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 30.11.2023.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUserID: String? = "123"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("We are practicing safe conding!")
                
                if let displayText {
                    Text(displayText)
                        .font(.title)
                }
                
                // DO NOT USE ! EVER !!!
                // DO NOT FORCE UNWRAP VALUES
//                Text(displayText!)
//                    .font(.title)
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
//                loadData()
                loadDataWuthGuard()
            }
        }
    }
    
    func loadData() {
        if let currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is: \(currentUserID)"
                isLoading = false
            }
        } else {
            displayText = "Error. There is no User ID!"
        }
    }
    
    func loadDataWuthGuard() {
        guard let currentUserID else {
            displayText = "Error. There is no User ID!"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User id is: \(currentUserID)"
            isLoading = false
        }
    }
}

#Preview {
    IfLetGuardBootcamp()
}
