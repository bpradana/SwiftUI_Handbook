//
//  TabViewPagination.swift
//  SwiftUI_Handbook
//
//  Created by Bintang Pradana on 10/01/24.
//

import SwiftUI

struct TabViewPagination: View {
    var body: some View {
        TabView {
            RoundedRectangle(cornerRadius: 30)
                .padding()
                .foregroundColor(.orange)
            RoundedRectangle(cornerRadius: 30)
                .padding()
                .foregroundColor(.pink)
            RoundedRectangle(cornerRadius: 30)
                .padding()
                .foregroundColor(.red)
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    TabViewPagination()
}
