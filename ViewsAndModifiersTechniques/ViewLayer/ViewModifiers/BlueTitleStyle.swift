//
//  BlueTitleStyle.swift
//  ViewsAndModifiersTechniques
//
//  Created by Josh Franco on 5/9/20.
//  Copyright © 2020 Josh Franco. All rights reserved.
//

import SwiftUI

struct BlueTitleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.system(size: 32).weight(.black))
            .foregroundColor(.blue)
    }
}

extension View {
    func blueTitle() -> some View {
        self.modifier(BlueTitleStyle())
    }
}

struct BlueTitleStyle_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
            .blueTitle()
    }
}
