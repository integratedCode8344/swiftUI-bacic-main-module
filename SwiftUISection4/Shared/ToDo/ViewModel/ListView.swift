//
//  ListView.swift
//  TodoList (iOS)
//
//  Created by Arun_Skyraan on 09/10/22.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        ZStack {
            if listViewModel.items.isEmpty {
                NoItemsView()
                    .transition(AnyTransition.opacity
                        .animation(.easeIn))
            } else {
                List {
                    ForEach(listViewModel.items) { index in
                        ListRowView(item: index)
                            .onTapGesture {
                                withAnimation(.linear) {
                                    listViewModel.updateItem(item: index)
                                }
                            }
                    }
                    .onDelete(perform: listViewModel.delete)
                    .onMove(perform: listViewModel.move)
                }
                .listStyle(PlainListStyle())
            }
            
        }
        .navigationTitle("ToDo")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink(destination: AddView(), label: {
            Text("Add")
        }))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
        .environmentObject(ListViewModel())
    }
}

