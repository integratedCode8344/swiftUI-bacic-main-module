//
//  PathView.swift
//  SwiftUISection4
//
//  Created by Arun_Skyraan on 26/10/22.
//

import SwiftUI

struct PathView: View {
    
    @State var animate: Bool = false
    
    var body: some View {

        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.orange.opacity(0.5), Color.gray.opacity(0.2)]),
                startPoint: .topTrailing,
                endPoint: .bottomTrailing)
            HStack(spacing: 0) {
                Pacman2(offsetAmount: animate ? 40 : 0)
                Pacman2(offsetAmount: animate ? 40 : 0)
                VStack {
                    Pacman2(offsetAmount: animate ? 40 : 0)
                    Pacman2(offsetAmount: animate ? 40 : 0)
                    Pacman2(offsetAmount: animate ? 40 : 0)
                }
                
            }
            .frame(width: 250, height: 250)
            
            ZStack {
                HStack {
                    QuadSample()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.blue.opacity(0.4), Color.blue.opacity(0.6)]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                        )
                    Sun()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.red.opacity(0.4), Color.orange.opacity(0.6)]),
                                startPoint: .topTrailing,
                                endPoint: .bottomTrailing)
                        )
                }
                
                ZStack {
                    ArcSample()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.blue, Color.purple]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                        )
                    Text("sun set")
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .font(.system(size: 30))
                }
            }
        }
        .onAppear {
            withAnimation(Animation.easeInOut.repeatForever()) {
                animate.toggle()
            }
    }

    }
}

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView()
    }
}


struct ArcSample: Shape {
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.maxX, y: rect.midY))
            path.addArc(
                center: CGPoint(x: rect.midX, y: rect.midY),
                radius: rect.height / 2,
                startAngle: Angle(degrees: 180),
                endAngle: Angle(degrees: 20),
                clockwise: true)
        }
    }
    
}

struct QuadSample: Shape {
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: .zero)
            path.addQuadCurve(
                to: CGPoint(x: rect.midX, y: rect.midY),
                control: CGPoint(x: rect.maxX - 100, y: rect.minY - 100))
        }
    }
    
}


struct Sun: Shape {
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.maxX, y: rect.midY))
            path.addArc(
                center: CGPoint(x: rect.midX, y: rect.midY),
                radius: rect.height / 9,
                startAngle: Angle(degrees: 10),
                endAngle: Angle(degrees: 19),
                clockwise: true)
        }
    }
    
}

struct Pacman2A: Shape {
    
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

