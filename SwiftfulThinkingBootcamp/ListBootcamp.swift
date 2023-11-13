//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 13.11.2023.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section (
                    header: 
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.red)
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                }
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Grocery list")
            .toolbar {
                ToolbarItem(placement: .topBarLeading, content: {
                    EditButton()
                })
                ToolbarItem(placement: .topBarTrailing, content: {
                    addButton
                })
            }
            .tint(.red)
        }
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

#Preview {
    ListBootcamp()
}
