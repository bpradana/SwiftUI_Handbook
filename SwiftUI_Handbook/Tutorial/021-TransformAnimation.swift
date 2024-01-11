//
//  TransformAnimation.swift
//  SwiftUI_Handbook
//
//  Created by Bintang Pradana on 10/01/24.
//

import SwiftUI

struct TransformAnimation: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 260, height: 200)
                .offset(y: 15)
                .foregroundStyle(.purple)
                .shadow(color: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)).opacity(show ? 0.6 : 0), radius: show ? 20 : 0, x: 0, y: show ? 10 : 0)
                .overlay {
                    Image("cat")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                        .padding()
                        .offset(y: 15)
                }
            
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 300, height: 200)
                .overlay {
                    Text("Click Me!!!")
                        .foregroundStyle(.white)
                        .font(.title)
                        .bold()
                }
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .offset(y: show ? -200 : 0)
                .scaleEffect(show ? 1.2 : 1)
                .rotationEffect(Angle(degrees: show ? 30 : 0))
                .rotation3DEffect(
                    Angle(degrees: show ? 30 : 0),
                    axis: (x: 1, y: 0, z: 0),
                    anchor: .center,
                    anchorZ: 0.0,
                    perspective: 1
                )
                .onTapGesture {
                    withAnimation(.spring()) {
                        show.toggle()
                    }
                }
        }
    }
}


#Preview {
    TransformAnimation()
}
