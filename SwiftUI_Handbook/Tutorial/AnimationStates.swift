//
//  AnimationStates.swift
//  SwiftUI_Handbook
//
//  Created by Bintang Pradana on 10/01/24.
//

import SwiftUI

struct AnimationStates: View {
    @State var show = false
    
    var body: some View {
        VStack {
            Text("View more")
                .bold()
                .foregroundColor(.white)
        }
        .frame(width: show ? 320 : 300, height: show ? 600 : 44)
        .background(Color.blue)
        .cornerRadius(30)
        .shadow(color: Color.blue.opacity(0.5), radius: 20)
        .onTapGesture {
            withAnimation(.bouncy) {
                show.toggle()
            }
        }
    }
}

#Preview {
    AnimationStates()
}
