//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Roman Romanov on 21.11.2023.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "1"
    
    @State private var selectedFruit = 0
    let fruits: [String] = [
        "Banana","Apple", "Peach", "Watermelon", "Grapes"
    ]
    
    @State var filterSelection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor: UIColor.white
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        VStack {
            Form {
                // Variation 1
                Picker(selection: $selectedFruit, label: Text("Select Favorite Fruit")) {
                    ForEach(0..<fruits.count, id: \.self) {
                        Text(self.fruits[$0])
                    }
                }
                // Variation 2
                Picker(selection: $selectedFruit) {
                    ForEach(0..<fruits.count, id: \.self) {
                        Text(self.fruits[$0])
                    }
                } label: {
                    HStack {
                        Text("Favorite Fruit")
                        Divider()
                        Text(fruits[selectedFruit])
                    }
                }
                // Variation 3
                Menu {
                    Picker(selection: $selectedFruit, label: Text("Select Favorite Fruit")) {
                        ForEach(0..<fruits.count, id: \.self) {
                            Text(fruits[$0])
                        }
                    }
                } label: {
                    HStack {
                        Text("Favorite Fruit")
                        Divider()
                        Text(fruits[selectedFruit])
                    }
                }
            }
        }
        .frame(height: 200)
        .padding(.bottom, 20)
        
        
        Menu {
            Picker(selection: $filterSelection, label: Text("Filter")) {
                ForEach(filterOptions, id: \.self) { option in
                    HStack {
                        Text("\(option)")
                        Image(systemName: "heart.fill")
                    }
                    .tag("\(option)")
                }
            }
        } label: {
            HStack {
                Text("Filter")
                Text(filterSelection)
            }
            .font(.headline)
            .foregroundStyle(.white)
            .padding()
            .padding(.horizontal)
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .blue.opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
        }
        .padding(.bottom, 20)
        
        
        VStack {
            HStack {
                Text("Age:")
                Text(selection)
            }
            
            Picker(selection: $selection) {
                ForEach(10..<100) { number in
                    Text("\(number)")
                        .font(.headline)
                        .foregroundStyle( .red)
                        .tag("\(number)")
                }
            } label: {
                Text("Picker")
            }
            .pickerStyle(WheelPickerStyle())
            .background(.gray.opacity(0.3))
        }
        .padding(.bottom, 20)
        
        Picker(selection: $filterSelection) {
            ForEach(filterOptions.indices, id: \.self) { index in
                Text(filterOptions[index])
                    .tag(filterOptions[index])
            }
        } label: {
            Text("SegmentedPicker")
        }
        .pickerStyle(SegmentedPickerStyle())
        // See method init
//        .background(.red)

        
        Spacer()
    }
}

#Preview {
    PickerBootcamp()
}
