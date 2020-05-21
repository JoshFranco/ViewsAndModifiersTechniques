//
//  ContentView.swift
//  ViewsAndModifiersTechniques
//
//  Created by Josh Franco on 5/8/20.
//  Copyright © 2020 Josh Franco. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            
            Button("Tap Me") {
                withAnimation {
                    self.isShowingRed.toggle()
                }
                
                
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                    .transition(.pivot)
            }
            
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
