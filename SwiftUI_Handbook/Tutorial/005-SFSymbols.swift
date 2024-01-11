//
//  SFSymbols.swift
//  SwiftUI_Handbook
//
//  Created by Bintang Pradana on 09/01/24.
//

import SwiftUI

struct SFSymbols: View {
    var body: some View {
        VStack {
            
            Image(systemName: "gear")
                .imageScale(.large) // you can change the icon size by using imageScale modifier
            
            Image(systemName: "gear")
                .font(.system(size: 50, weight: .light)) // or by using font modifier
            
            Image(systemName: "calendar.badge.plus")
                .renderingMode(.template) // using template as rendering mode will make the icon monochromatic
                .font(.system(size: 50, weight: .light))
            
            Image(systemName: "calendar.badge.plus")
                .renderingMode(.original) // to enable color use rendering mode original on supported icon
                .font(.system(size: 50, weight: .light))
        }
    }
}

#Preview {
    SFSymbols()
}
