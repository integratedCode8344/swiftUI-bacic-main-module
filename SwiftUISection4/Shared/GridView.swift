//
//  GridView.swift
//  SwiftUISection4 (iOS)
//
//  Created by Arun_Skyraan on 27/10/22.
//

import SwiftUI

struct GridView: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    var body: some View {
        ScrollView {
            
            Image("nature")
                .resizable()
                .aspectRatio(contentMode: .fit)
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header:
                                Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(Color.purple)
                                .frame(height: 150)
                        }
                    }
                    
                    Section(header:
                                Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(10)

                    ) {
                        ForEach(0..<30) { index in
                            Rectangle()
                                .fill(Color.green)
                                .frame(height: 150)
                        }
                    }
                    
                })
        }
        .navigationTitle("grid")
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
