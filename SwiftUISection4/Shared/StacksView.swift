//
//  StacksView.swift
//  SwiftUISection4
//
//  Created by Arun_Skyraan on 26/10/22.
//

import SwiftUI


/*
 VStack -> Vertical
 HStack -> Horizandal
 ZStack -> Back to front (zIndex)
*/


struct StacksView: View {
    var body: some View {
        VStack(spacing: 50) {
            
            Text("VStack")
                .fontWeight(.semibold)
            
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1 ZS")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            // alternate to ZStack
            Text("2")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
            
            HStack(spacing : 80) {
                
                ZStack {
                    Circle()
                        .frame(width: 100, height: 100)
                    
                    Text("1 HS")
                        .font(.title)
                        .foregroundColor(.white)
                }
                
                ZStack {
                    Circle()
                        .frame(width: 100, height: 100)
                    
                    Text("2")
                        .font(.title)
                        .foregroundColor(.white)
                }

            }
        }
        .navigationTitle("stacks")

    }
}

struct StacksView_Previews: PreviewProvider {
    static var previews: some View {
        StacksView()
    }
}
