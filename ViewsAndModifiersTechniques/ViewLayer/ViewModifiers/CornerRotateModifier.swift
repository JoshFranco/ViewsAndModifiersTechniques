//
//  CornerRotateModifier.swift
//  ViewsAndModifiersTechniques
//
//  Created by Josh Franco on 5/13/20.
//  Copyright © 2020 Josh Franco. All rights reserved.
//

import SwiftUI

struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(amount), anchor: anchor)
            .clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(active: CornerRotateModifier(amount: -90, anchor: .topLeading),
                  identity: CornerRotateModifier(amount: 0, anchor: .topLeading))
    }
}

struct test {
    static var shared = test()
    var x = true
}

struct CornerRotateModifier_Previews: PreviewProvider {
    @State private var isShowingRed = false
    
    static var previews: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    test.shared.x.toggle()
                    CornerRotateModifier_Previews.
                }
            }
            
            if test.shared.x {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}
