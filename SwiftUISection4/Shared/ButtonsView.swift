//
//  ButtonsView.swift
//  SwiftUISection4
//
//  Created by Arun_Skyraan on 26/10/22.
//

import SwiftUI

struct ButtonsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                Button(action: {
                    
                }, label: {
                    Text("Button")
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .font(.title)
                        .cornerRadius(40)
                })
                Button(action: {
                    
                }, label: {
                    Text("Click")
                        .foregroundColor(.green)
                        .font(.title)
                        .padding()
                        .border(Color.green, width: 5)
                })
                Button(action: {
                    
                }, label: {
                    Text("Button")
                        .fontWeight(.bold)
//                        .font(.title)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .padding(10)
                        .border(Color.red, width: 5)
                    
                })
                Button(action: {
                    
                }, label: {
                    Text("Finish".uppercased())
                        .font(.caption)
                        .bold()
                        .foregroundColor(.blue)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(
                            Capsule()
                                .stroke(Color.blue, lineWidth: 2.0)
                        )
                })
                
                Button(action: {
                    
                }, label: {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 75, height: 75)
                        .shadow(radius: 10)
                        .overlay(
                            Image(systemName: "heart.fill")
                                .font(.largeTitle)
                                .foregroundColor(Color.red)
                        )
                })
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(
                            Color.blue
                                .cornerRadius(10)
                                .shadow(radius: 10)
                        )
                })
            }
        }
        .navigationTitle("buttons")
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
