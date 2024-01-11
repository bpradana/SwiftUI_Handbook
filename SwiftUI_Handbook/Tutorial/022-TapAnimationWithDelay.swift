//
//  TapAnimationWithDelay.swift
//  SwiftUI_Handbook
//
//  Created by Bintang Pradana on 10/01/24.
//

import SwiftUI

struct TapAnimationWithDelay: View {
    @State var tap = false
    
    var body: some View {
        VStack {
            Text("View more").foregroundColor(.white)
        }
        .frame(width: 200, height: 200)
        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .mask(RoundedRectangle(cornerRadius: 30))
        .shadow(color: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)).opacity(tap ? 0.6 : 0.3), radius: tap ? 20 : 10, x: 0, y: tap ? 10 : 20)
        .scaleEffect(tap ? 1.2 : 1)
        .animation(.spring(response: 0.4, dampingFraction: 0.6))
        .onTapGesture {
            tap.toggle()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                tap.toggle()
            }
        }
    }
}

#Preview {
    TapAnimationWithDelay()
}
