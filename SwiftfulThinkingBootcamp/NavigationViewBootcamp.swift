//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 12.11.2023.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("Hello, World!", destination: MyOtherSCreen())
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All inboxes")
//            .navigationBarTitleDisplayMode(/*@START_MENU_TOKEN@*/.automatic/*@END_MENU_TOKEN@*/)
//            .toolbar(.hidden, for: .automatic)
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: MyOtherSCreen()) {
                        Image(systemName: "gear")
                    }
                    .tint(.red)
                }
            }
        }
    }
}

struct MyOtherSCreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
                .navigationTitle("Green screen!")
//                .toolbar(.hidden, for: .automatic)
            
            VStack {
                Button("BACK BUTTON") {
                    dismiss()
                }
                
                NavigationLink("Click here", destination: Text("3rd screen!"))
            }
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
