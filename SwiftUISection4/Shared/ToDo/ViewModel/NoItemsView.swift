//
//  NoItemsView.swift
//  TodoList (iOS)
//
//  Created by Arun_Skyraan on 21/10/22.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("No ToDo 's")
                    .foregroundColor(Color.white)
                    .font(.title2)
                    .fontWeight(.semibold)
                NavigationLink(destination: {
                    AddView()
                }, label: {
                    Text("Add new your Todo\(Image(systemName: "note.text.badge.plus"))")
                        .foregroundColor(Color.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(isAnimated ? Color.orange : Color.yellow)
                        .cornerRadius(10)
                })
                .padding(.horizontal, isAnimated ? 30 : 50)
                .scaleEffect(isAnimated ? 1.1 : 1.0)
                .offset(y: isAnimated ? -7 : 0)
            }
            .padding(10)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isAnimated ? Color.purple : Color.blue)
        .onAppear(perform: addAnimation)
    }
    
    func addAnimation() {
        guard !isAnimated else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 2)
                    .repeatForever()
            ) {
                isAnimated.toggle()
            }
        }
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NoItemsView()
        }
    }
}
