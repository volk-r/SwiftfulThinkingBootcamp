//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 28.11.2023.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    @State var showAlert: Bool = false
    
    // MARK: BODY
    
    // Working copy - things to do:
    // 1) Fix title
    // 2) Fix alert
    // 3) Fix something else
    
    // NICK - Working copy - things to do:
    /*
    1) Fix title
    2) Fix alert
     */
    
    var body: some View {
        NavigationStack { // START: NAV
            ZStack {
                // background
                Color.red.ignoresSafeArea()
                
                // foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("ALERT") {
                            showAlert.toggle()
                        }
                    }
                }
                .alert("This is the alert!", isPresented: $showAlert) {}
            }
        } // END: NAV
    }
    
    /// This is foreground layer that holds a ScrollView.
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            getTitle(title: "Hello")
            
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLLV
    }
    
    
    /// Gets a Text with a specified title
    ///
    /// This function creates and return a Text immediately. This Text will have a title based on the text parameter but it will NOT have any formatters.
    /// ```
    /// getTitle(title: "Hello") -> Text("Hello")
    /// ```
    ///
    /// - Warning: There is no additional parameters in this Text/
    /// - Parameter title: This is the title for the Text.
    /// - Returns: Returns a Text with a title.
    func getTitle(title: String) -> Text {
        return Text(title)
    }
}

// MARK: PREVIEW

#Preview {
    DocumentationBootcamp()
}
