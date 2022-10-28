//
//  Path1View.swift
//  SwiftUISection4 (iOS)
//
//  Created by Arun_Skyraan on 27/10/22.
//

import SwiftUI

struct Path1View: View {
    
    @State var Wave = 0.40
    @State var Toggle = false
    
    var body: some View {
        VStack {
            ZStack{
                WaterShape(offsetAmount: !Toggle ? 0.40 : 0.60)
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.blue.opacity(0.3), Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1))]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .ignoresSafeArea()
                    
            WaterShape1(x: $Toggle, offsetAmount: Toggle ? 0.40 : 0.60)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1))]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                )
                .ignoresSafeArea()
        }
        }.onAppear(perform: {
            withAnimation(Animation.easeInOut(duration: 0.90).repeatForever()) {
                Toggle.toggle()
            }
        })
    }
}

struct Path1View_Previews: PreviewProvider {
    static var previews: some View {
        Path1View()
    }
}

struct WaterShape: Shape {
    var offsetAmount: Double
    var offsetAmount1: Double = 0.40
    
    var animatableData: Double {
        get { offsetAmount }
        set { offsetAmount = newValue
            offsetAmount1 = 1 - offsetAmount
        }
    }
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.minX, y: rect.midY))
            
            path.addQuadCurve(
                to: CGPoint(x: rect.midX, y: rect.midY),
                control: CGPoint(x: rect.width * 0.25, y: rect.height * offsetAmount))
            
            path.addQuadCurve(
                to: CGPoint(x: rect.maxX, y: rect.midY),
                control: CGPoint(x: rect.width * 0.75, y: rect.height * offsetAmount1))
            
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        }
    }
    
}

struct WaterShape1: Shape {
    @Binding var x : Bool
    
    var offsetAmount: Double
    var offsetAmount1: Double = 0.40
    
    var animatableData: Double {
        get { offsetAmount }
        set { offsetAmount = newValue
            offsetAmount1 = 1 - offsetAmount
        }
    }
    
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.minX, y: rect.midY))
            
            path.addQuadCurve(
                to: CGPoint(x: rect.midX, y: rect.midY),
                control: CGPoint(x: rect.width * 0.25, y: rect.height * offsetAmount))
            
            path.addQuadCurve(
                to: CGPoint(x: rect.maxX, y: rect.midY),
                control: CGPoint(x: rect.width * 0.75, y: rect.height * offsetAmount1))
            
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        }
    }
    
}

