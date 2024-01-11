//
//  MaxWidthAndFrameAlignment.swift
//  SwiftUI_Handbook
//
//  Created by Bintang Pradana on 10/01/24.
//

import SwiftUI

struct MaxWidthAndFrameAlignment: View {
    var body: some View {
        VStack {
            // pyramid of hell! don't do this (but in my opinion, this monstrosity is easier to understand)
            VStack {
                HStack {
                    Image(systemName: "xmark")
                        .frame(width: 32, height: 32)
                        .background(Circle().stroke())
                    Spacer()
                }
                Spacer()
            }
            .padding()
            
            // instead, do this
            Image(systemName: "xmark")
                .frame(width: 32, height: 32)
                .background(Circle().stroke())
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding()
            
            // overlay
            Rectangle()
                .fill(Color.blue)
                .overlay(
                    Image(systemName: "xmark")
                        .frame(width: 32, height: 32)
                        .background(Circle().stroke())
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding()
                )

        }
    }
}

#Preview {
    MaxWidthAndFrameAlignment()
}
