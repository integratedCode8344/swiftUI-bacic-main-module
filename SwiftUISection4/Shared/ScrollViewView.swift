//
//  ScrollView.swift
//  SwiftUISection4
//
//  Created by Arun_Skyraan on 26/10/22.
//

import SwiftUI

struct ScrollViewView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 15)
                                    .padding()
                                    .overlay(
                                        Text("Index \(index)")
                                            .fontWeight(.semibold)
                                    )
                            }
                        }
                    })
                }
            }
        }
        .navigationTitle("scroll view")
    }
}

struct ScrollViewView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewView()
    }
}
