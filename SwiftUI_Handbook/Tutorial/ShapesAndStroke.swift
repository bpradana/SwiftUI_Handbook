//
//  ShapesAndStroke.swift
//  SwiftUI_Handbook
//
//  Created by Bintang Pradana on 09/01/24.
//

import SwiftUI

struct ShapesAndStroke: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .stroke(Color.black, lineWidth: 2)
                    .frame(width: 44, height: 44)
                Circle()
                    .stroke(Color.black, lineWidth: 2)
                    .frame(width: 44, height: 44)
                Ellipse()
                    .stroke(Color.black, lineWidth: 2)
                    .frame(width: 44, height: 88)
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .stroke(Color.black, lineWidth: 2)
                    .frame(height: 44)
                Capsule()
                    .stroke(Color.black, lineWidth: 2)
                    .frame(height: 44)
            }

            ZStack {
                Rectangle()
                    .fill(Color.blue)
                    .ignoresSafeArea()

                VStack {
                    Circle()
                        .stroke(Color.black, lineWidth: 2)
                        .frame(width: 44, height: 44)
                    Text("Hello World!").bold()
                    Capsule()
                        .foregroundColor(Color.green)
                        .frame(height: 44)
                        .overlay(Text("Second Line"))
                }
                .padding()
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                .padding()
            }
        }
    }
}

#Preview {
    ShapesAndStroke()
}
