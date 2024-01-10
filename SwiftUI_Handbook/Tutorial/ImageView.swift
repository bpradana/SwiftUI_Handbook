//
//  ImageView.swift
//  SwiftUI_Handbook
//
//  Created by Bintang Pradana on 10/01/24.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("demo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200, alignment: .center)
    }
}

#Preview {
    ImageView()
}
