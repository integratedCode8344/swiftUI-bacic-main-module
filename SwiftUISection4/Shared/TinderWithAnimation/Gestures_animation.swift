//
//  Gestures_animation.swift
//  SwiftUISection4
//
//  Created by Arun_Skyraan on 27/10/22.
//

import SwiftUI



struct Gestures_animation: View {
    private var people: [String] = ["images", "images-12", "images-10", "images-4", "sweet-fruit-mexico-1200783"].reversed()
    var body: some View {
        VStack {
            ZStack {
                ForEach(people, id: \.self) { person in
                    CardView(person: person)
                }
            }
        }
        .navigationTitle("tinder")
    }
}

struct Gestures_animation_Previews: PreviewProvider {
    static var previews: some View {
        Gestures_animation()
    }
}
