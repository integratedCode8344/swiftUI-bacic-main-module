//
//  ListRowView.swift
//  TodoList (iOS)
//
//  Created by Arun_Skyraan on 09/10/22.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? Color.green : Color.red)
            Text(item.title)
            Spacer()
        }
        .font(.title)
        .padding(.vertical)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(item: ItemModel(title: "Text", isCompleted: true))
    }
}
