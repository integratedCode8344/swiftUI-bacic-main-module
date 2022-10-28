//
//  ListViewModel.swift
//  TodoList (iOS)
//
//  Created by Arun_Skyraan on 16/10/22.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = [] {
        didSet {
            saveItems()
        }
    }
    let item_key: String = "items_list"
    
    init() {
        getItem()
    }
    
    func getItem() {
        //        let newItems = [
        //            ItemModel( title: "First", isCompleted: true),
        //            ItemModel(title: "Second", isCompleted: false),
        //            ItemModel(title: "Thirst", isCompleted: true),
        //            ItemModel(title: "Fourth", isCompleted: false)
        //        ]
        //        items.append(contentsOf: newItems)
        guard
            let data = UserDefaults.standard.data(forKey: item_key),
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else { return }
        self.items = savedItems
    }
    
    func delete(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func move(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item : ItemModel) {
        
//        if let index = items.firstIndex { (existingItem) -> Bool in
//            return existingItem.id == item.id
//        } {
//            //run this
//        }
        
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()
        }
        
    }
    
    func saveItems() {
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData, forKey: item_key)
        }
    }

}
