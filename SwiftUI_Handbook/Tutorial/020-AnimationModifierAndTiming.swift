//
//  AnimationModifierAndTiming.swift
//  SwiftUI_Handbook
//
//  Created by Bintang Pradana on 10/01/24.
//

import SwiftUI

struct AnimationModifierAndTiming: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
                .opacity(show ? 0.8 : 0.2)
                .animation(.easeOut(duration: 0.8))
            RoundedRectangle(cornerRadius: 40)
                .foregroundColor(.white)
                .frame(height: 300)
                .opacity(show ? 1 : 0.5)
                .padding(show ? 16 : 32)
                .offset(y: show ? 0 : 30)
                .animation(.spring(response: 0.5, dampingFraction: 0.4))
            RoundedRectangle(cornerRadius: 40)
                .frame(height: 300)
                .offset(y: show ? 600 : 0)
                .foregroundColor(.white)
                .shadow(radius: 40)
                .padding()
                .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8))
        }
        .onTapGesture {
            show.toggle()
        }
    }
}

#Preview {
    AnimationModifierAndTiming()
}
