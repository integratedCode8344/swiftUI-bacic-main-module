//
//  ContextMenu.swift
//  SwiftUISection4 (iOS)
//
//  Created by Arun_Skyraan on 27/10/22.
//

import SwiftUI

struct ContextMenu: View {
    var body: some View {
        Menu("Context Menu".uppercased()) {
            Button("ascending"){}
            Button("descending"){}
            Button("rating"){}
        }
        .frame(width: 150, height: 17)
        .padding()
        .foregroundStyle(
            .linearGradient(colors: [.purple, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .font(.headline)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(color: .black, radius: 4, x: 2, y: 2)
        .navigationTitle("context menu")
    }
}

struct ContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu()
    }
}
