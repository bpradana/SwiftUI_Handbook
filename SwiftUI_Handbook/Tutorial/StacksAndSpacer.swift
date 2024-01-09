//
//  StacksAndSpacer.swift
//  SwiftUI_Handbook
//
//  Created by Bintang Pradana on 09/01/24.
//

import SwiftUI

struct StacksAndSpacer: View {
    var body: some View {
        VStack {
            
            // MARK: VStack and Spacer
            VStack(alignment: .leading, spacing: 16) {
                Text("Hello World!")
                    .font(.title)
                Spacer()
                Text("Second Line")
            }
            .padding()
            
            // MARK: HStack and Spacer
            HStack(alignment: .bottom, spacing: 16) {
                Text("Hello World!")
                    .font(.title)
                Spacer()
                Text("Second Line")
            }
            .padding()
            .frame(width: 320)
            
            // MARK: ZStack and Spacer
            ZStack(alignment: .center) {
                Rectangle()
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text("Hello World")
                    .font(.title)
                Spacer()
                Text("Second Line")
            }
            .padding()
            .frame(width: 320)
            
        }
    }
}

#Preview {
    StacksAndSpacer()
}
