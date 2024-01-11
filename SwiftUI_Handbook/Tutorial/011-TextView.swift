//
//  TextView.swift
//  SwiftUI_Handbook
//
//  Created by Bintang Pradana on 10/01/24.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.system(size: 48, weight: .light, design: .serif))
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.system(size: 48, weight: .light, design: .serif))
            .italic()
        
        Text("This sans-serif typeface is the system font for iOS, macOS, and tvOS, and includes a rounded variant. It provides a consistent, legible, and friendly typographic voice.")
            .frame(width: 100, alignment: .leading)
            .lineSpacing(10)
            .lineLimit(3)
    }
}

#Preview {
    TextView()
}
