//
//  TransitionView.swift
//  SwiftUISection4
//
//  Created by Arun_Skyraan on 26/10/22.
//

import SwiftUI

struct TransitionView: View {
    @State var isAnimate: Bool = false
    @State var isAnimating: Bool = false
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                HStack {
                    Button("transition1") {
                        withAnimation(.easeIn, {
                            isAnimate.toggle()
                        })
                    }
                    Button(action: {
                        withAnimation(.spring(response: 0.5,
                                              dampingFraction: 0.7,
                                              blendDuration: 1.0), {
                            isAnimating.toggle()
//                            isAnimate.toggle()
                        })
                    }, label: {
                        Text("transition2")
                    })
                }
                Spacer()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
            
            if isAnimate {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeInOut)
                    ))
            }
            
            
        }
    }
}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}
