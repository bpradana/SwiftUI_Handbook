//
//  ContentView.swift
//  SwiftUI_Handbook
//
//  Created by Bintang Pradana on 09/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Stacks and Spacer") {
                    StacksAndSpacer()
                }
                NavigationLink("Shapes and Stroke") {
                    ShapesAndStroke()
                }
                NavigationLink("SFSymbols") {
                    SFSymbols()
                }
                NavigationLink("Color Literal") {
                    ColorLiteral()
                }
                NavigationLink("Sidebar") {
                    Sidebar()
                }
                NavigationLink("Toolbar") {
                    Toolbar()
                }
                NavigationLink("Image View") {
                    ImageView()
                }
                NavigationLink("Safe Area") {
                    SafeArea()
                }
                NavigationLink("Text View") {
                    TextView()
                }
                NavigationLink("Max Width and Frame Alignment") {
                    MaxWidthAndFrameAlignment()
                }
                NavigationLink("Shadow and Color Opacity") {
                    ShadowAndColorOpacity()
                }
                NavigationLink("Mask and Transparency") {
                    MaskAndTransparency()
                }
                NavigationLink("Clip Shape and Smooth Corners") {
                    ClipShapeAndSmoothCorners()
                }
                NavigationLink("Tab View Pagination") {
                    TabViewPagination()
                }
                NavigationLink("Animation States") {
                    AnimationStates()
                }
                NavigationLink("View Transitions and Animations") {
                    ViewTransitionsAndAnimations()
                }
                NavigationLink("Animation Modifier and Timing") {
                    AnimationModifierAndTiming()
                }
                NavigationLink("Transform Animation") {
                    TransformAnimation()
                }
                NavigationLink("Tap Animation With Delay") {
                    TapAnimationWithDelay()
                }
                NavigationLink("Long Press Gesture") {
                    LongPressGesture_()
                }
            }
            .navigationTitle("SwiftUI Handbook")
        }
    }
}

#Preview {
    ContentView()
}
