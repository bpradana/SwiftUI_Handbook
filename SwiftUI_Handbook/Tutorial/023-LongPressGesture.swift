//
//  LongPressGesture.swift
//  SwiftUI_Handbook
//
//  Created by Bintang Pradana on 10/01/24.
//

import SwiftUI

struct LongPressGesture_: View {
    @State var show = false
    @GestureState var press = false
    
    var body: some View {
        Image(systemName: "camera.fill")
            .foregroundStyle(.white)
            .frame(width: 60, height: 60)
            .background(show ? .black : .blue)
            .mask(Circle())
            .scaleEffect(press ? 2 : 1)
            .animation(.spring)
            .gesture(
                LongPressGesture(minimumDuration: 0.5)
                    .updating($press) { currentState, gestureState, transaction in
                        gestureState = currentState
                    }
                    .onEnded { value in
                        show.toggle()
                    }
            )
    }
}

#Preview {
    LongPressGesture_()
}
