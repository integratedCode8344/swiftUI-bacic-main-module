//
//  Animation1View.swift
//  SwiftUISection4
//
//  Created by Arun_Skyraan on 26/10/22.
//

import SwiftUI

struct Animation1View: View {
    @State var animate: Bool = false
    var body: some View {
        VStack {
            ZStack {
                VStack {
                Pacman(offsetAmount: animate ? 20 : 0)
//                Pacman1(offsetAmount: animate ? 40 : 0)
                    .frame(width: 250, height: 250)
                    .background(Color.blue)


                }
                    
            }
            .onAppear {
                withAnimation(Animation.easeInOut.repeatForever()) {
                    animate.toggle()
                }
        }
        }
    }
}

struct Animation1View_Previews: PreviewProvider {
    static var previews: some View {
        Animation1View()
    }
}

struct Pacman: Shape {
    
    var offsetAmount: Double
    
    var animatableData: Double {
        get { offsetAmount }
        set { offsetAmount = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addArc(
                center: CGPoint(x: rect.midX, y: rect.minY),
                radius: rect.height / 2,
                startAngle: Angle(degrees: offsetAmount),
                endAngle: Angle(degrees: 360 - offsetAmount),
                clockwise: false)
        }
    }
    
}

struct Pacman1: Shape {
    
    var offsetAmount: Double
    
    var animatableData: Double {
        get { offsetAmount }
        set { offsetAmount = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addArc(
                center: CGPoint(x: rect.midX, y: rect.minY),
                radius: rect.height / 8,
                startAngle: Angle(degrees: offsetAmount),
                endAngle: Angle(degrees: 360 - offsetAmount),
                clockwise: false)
        }
    }
    
}
struct Pacman2: Shape {
    
    var offsetAmount: Double
    
    var animatableData: Double {
        get { offsetAmount }
        set { offsetAmount = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addArc(
                center: CGPoint(x: rect.midX, y: rect.minY),
                radius: rect.height / -12,
                startAngle: Angle(degrees: 0 - offsetAmount ),
                endAngle: Angle(degrees: offsetAmount),
                clockwise: false)
        }
    }
    
}
