//
//  ShapesView.swift
//  SwiftUISection4
//
//  Created by Arun_Skyraan on 26/10/22.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
        ScrollView {
            VStack {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 200, height: 200)
                    .overlay(Text("rectangle"))
                
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .overlay(Text("roundedrectangle"))

                
                Capsule()
                    .fill(.green)
                    .frame(width: 200, height: 100)
                    .overlay(Text("capsule"))

                
                Ellipse()
                    .fill(.orange)
                    .frame(width: 200, height: 100)
                    .overlay(Text("ellipse"))

                
                Circle()
                    .fill(.purple)
                    .frame(width: 100, height: 100)
                    .overlay(Text("circle"))
                ZStack {
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 200, height: 200)
                    
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(.red)
                        .frame(width: 200, height: 200)
                    
                    Capsule()
                        .fill(.green)
                        .frame(width: 100, height: 50)
                    
                    Ellipse()
                        .fill(.blue)
                        .frame(width: 100, height: 50)
                    
                    Circle()
                        .fill(.white)
                        .frame(width: 100, height: 50)
                }
            }
        }
        .navigationTitle("shapes")
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
