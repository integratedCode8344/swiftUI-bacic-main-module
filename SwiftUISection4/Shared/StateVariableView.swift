//
//  StateVariableView.swift
//  SwiftUISection4
//
//  Created by Arun_Skyraan on 26/10/22.
//

import SwiftUI

struct StateVariableView: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "--------"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea(.all)
            VStack(spacing: 30) {
                Text("State veriable example")
                Text(myTitle.uppercased())
                    .fontWeight(.heavy)
                Text("count: \(count)")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                
                HStack {
                    Button(action: {
                        backgroundColor = .blue
                        myTitle = "button 1 pressed"
                        count += 1
                    }, label: {
                        Text("button 1")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding()
                            .padding(.horizontal, 20)
                            .background(
                                Color.orange.opacity(0.5)
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                            )
                    })
                    Button(action: {
                        backgroundColor = .purple
                        myTitle = "button 2 pressed"
                        count -= 1
                    }, label: {
                        Text("button 2")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding()
                            .padding(.horizontal, 20)
                            .background(
                                Color.pink.opacity(0.5)
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                            )
                    })
                }
            }
        }
        .navigationTitle("state and Binding")
    }
}

struct StateVariableView_Previews: PreviewProvider {
    static var previews: some View {
        StateVariableView()
    }
}
