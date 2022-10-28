//
//  ListSampleView.swift
//  SwiftUISection4
//
//  Created by Arun_Skyraan on 26/10/22.
//

import SwiftUI

struct ListSampleView: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    var body: some View {
//        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                            .foregroundColor(.white)
                            .fontWeight(.thin)

                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.purple)
                }
            }
//            .listStyle(PlainListStyle())
            .navigationTitle("List")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
//        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
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

struct ListSampleView_Previews: PreviewProvider {
    static var previews: some View {
        ListSampleView()
    }
}
