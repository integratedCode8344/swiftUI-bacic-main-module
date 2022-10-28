//
//  ImagesView.swift
//  SwiftUISection4
//
//  Created by Arun_Skyraan on 26/10/22.
//

import SwiftUI

struct ImagesView: View {
    var body: some View {
        VStack {
            Image("nature")
                .resizable()
//                .scaledToFit()
                .aspectRatio(contentMode: .fit)

            Image("nature")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250.0, height: 250.0, alignment: .center)
                .clipShape(Circle())
            
            Image("nature")
                 .resizable()
                 .aspectRatio(contentMode: .fill)
                 .frame(width: 250.0, height: 250.0, alignment: .center)
                 .border(Color.green, width: 5.0)
                 .clipped()
        }
        .navigationTitle("images")
    }
}

struct ImagesView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesView()
    }
}
