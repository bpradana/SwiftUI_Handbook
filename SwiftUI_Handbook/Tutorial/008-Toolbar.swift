//
//  Toolbar.swift
//  SwiftUI_Handbook
//
//  Created by Bintang Pradana on 09/01/24.
//

import SwiftUI

struct Toolbar: View {
    var body: some View {
        NavigationView {
            Text("My app")
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Image(systemName: "person")
                    HStack {
                        Image(systemName: "ellipsis")
                        Divider()
                        Image(systemName: "trash")
                            .frame(width: 32, height: 32)
                            .mask(Circle())
                    }
                }
            }
        }
    }
}

#Preview {
    Toolbar()
}
