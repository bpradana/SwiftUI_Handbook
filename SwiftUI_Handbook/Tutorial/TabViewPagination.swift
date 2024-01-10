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
            RoundedRectangle(cornerRadius: 30).padding()
                .foregroundColor(.orange)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                .shadow(color: Color.orange.opacity(0.3), radius: 20, x: 0, y: 10)
            RoundedRectangle(cornerRadius: 30).padding()
                .foregroundColor(.pink)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                .shadow(color: Color.pink.opacity(0.3), radius: 20, x: 0, y: 10)
            RoundedRectangle(cornerRadius: 30).padding()
                .foregroundColor(.red)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                .shadow(color: Color.red.opacity(0.3), radius: 20, x: 0, y: 10)
        }
        .tabViewStyle(PageTabViewStyle())
        .ignoresSafeArea()
    }
}

#Preview {
    TabViewPagination()
}
