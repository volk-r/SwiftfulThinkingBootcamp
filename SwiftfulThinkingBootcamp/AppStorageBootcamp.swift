//
//  AppStorageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 06.12.2023.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
//    @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack (spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
            if let currentUserName {
                Text(currentUserName)
            }
            
            Button("Save".uppercased()) {
//                let name: String = "Nick"
                let name: String = "Emily"
                currentUserName = name
//                UserDefaults.standard.setValue(name, forKey: "name")
            }
        }
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

#Preview {
    AppStorageBootcamp()
}
