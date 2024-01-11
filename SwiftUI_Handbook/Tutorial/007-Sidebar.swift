//
//  Sidebar.swift
//  SwiftUI_Handbook
//
//  Created by Bintang Pradana on 09/01/24.
//

import SwiftUI

// this is the default view (right side and not visible on iPhone, try it on iPad!)
struct HomeView: View {
    var body: some View {
        Text("Courses")
            .navigationTitle("Courses")
    }
}

// on iPad this is the sidebar
struct Sidebar: View {
    var body: some View {
        NavigationView {
            List {
                Label("Courses", systemImage: "book")
                Label("Tutorials", systemImage: "square")
            }
            .navigationTitle("Learn")
            
            HomeView()
        }
    }
}

#Preview {
    Sidebar()
}
