//
//  ShadowAndColorOpacity.swift
//  SwiftUI_Handbook
//
//  Created by Bintang Pradana on 10/01/24.
//

import SwiftUI

struct ShadowAndColorOpacity: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(.orange)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                .shadow(color: Color.pink.opacity(0.3), radius: 20, x: 0, y: 10)
                .frame(width: 300, height: 300)
                .padding()
        }
    }
}

#Preview {
    ShadowAndColorOpacity()
}
