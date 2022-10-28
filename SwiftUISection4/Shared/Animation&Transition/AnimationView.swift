//
//  AnimationView.swift
//  SwiftUISection4
//
//  Created by Arun_Skyraan on 26/10/22.
//

import SwiftUI

struct AnimationView: View {
    @State private var circleColorChanged = false
    @State private var heartColorChanged = false
    @State private var heartSizeChanged = false
    @State private var isAnimated = false
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(circleColorChanged ? Color(.systemGray5) : .red)
                
                Image(systemName: "heart.fill")
                    .foregroundColor(heartColorChanged ? .red : .white)
                    .font(.system(size: 50))
                    .scaleEffect(heartSizeChanged ? 1.0 : 0.5)
            }
            .onTapGesture {
                withAnimation(Animation.easeInOut(duration: 1.0).repeatCount(50, autoreverses: true)) {
                    self.circleColorChanged.toggle()
                    self.heartColorChanged.toggle()
                    self.heartSizeChanged.toggle()
                    self.isAnimated.toggle()
                }
                
        }
            VStack {
                RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                    .fill(isAnimated ? Color.purple : Color.green)
                    .frame(
                        width: isAnimated ? 100 : 300,
                        height: isAnimated ? 100 : 300)
                    .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                    .offset(y: isAnimated ? 300 : 0)
                Spacer()
            }
        }
        
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
