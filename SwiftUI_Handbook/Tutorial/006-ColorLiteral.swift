//
//  ColorLiteral.swift
//  SwiftUI_Handbook
//
//  Created by Bintang Pradana on 09/01/24.
//

import SwiftUI

struct ColorLiteral: View {
    var body: some View {
        VStack {
            Text("Color Literal")
                .font(.title)
                .bold()
                .foregroundStyle(Color(#colorLiteral(red: 0.1, green: 0.4, blue: 0.7, alpha: 1)))
        }
    }
}

#Preview {
    ColorLiteral()
}
