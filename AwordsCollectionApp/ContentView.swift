//
//  ContentView.swift
//  AwordsCollectionApp
//
//  Created by Alexey Efimov on 05.08.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showShape = false
    @State private var scale: Double = 0
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                HStack {
                    Text(showShape ? "Hide Shape" : "Show Shape")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(showShape ? 2 : 1)
                        .rotationEffect(.degrees(showShape ? 0 : 180))
                }
            }
            Spacer()
            
            if showShape {
                SwiftLogo(
                    width: 250,
                    height: 250,
                    startColor: Color.red,
                    finishColor: Color.orange
                )
                .rotationEffect(.degrees(scale))
                .transition(.trasition)
            }
    
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            scale += 45
            showShape.toggle()
        }
    }
}

extension AnyTransition {
    static var trasition: AnyTransition {
        let insertion = AnyTransition.move(edge: .trailing)
            .combined(with: .scale)
        let removal = AnyTransition.scale
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
