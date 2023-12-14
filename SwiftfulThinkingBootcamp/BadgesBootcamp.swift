//
//  BadgesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 14.12.2023.
//

import SwiftUI

// List
// TabView

struct BadgesBootcamp: View {
    var body: some View {
        List {
            Text("Heelo, world")
                .badge("NEW ITEM")
            Text("Heelo, world")
            Text("Heelo, world")
            Text("Heelo, world")
            Text("Heelo, world")
        }
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge("NEW")
//
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//            
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//        }
    }
}

#Preview {
    BadgesBootcamp()
}
