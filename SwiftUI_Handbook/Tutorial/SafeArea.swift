//
//  SafeArea.swift
//  SwiftUI_Handbook
//
//  Created by Bintang Pradana on 10/01/24.
//

import SwiftUI

struct SafeArea: View {
    var body: some View {
        VStack {
            Color.blue.ignoresSafeArea(.all, edges: .bottom)
            ZStack {
                Color.blue.ignoresSafeArea()

                VStack {
                    Text("SwiftUI for iOS 14")
                        .bold()
                }
                .frame(width: 300, height: 200)
                .background(Color.white)
            }
        }
    }
}

#Preview {
    SafeArea()
}
