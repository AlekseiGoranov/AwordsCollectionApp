//
//  Circle.swift
//  AwordsCollectionApp
//
//  Created by Aleksei Goranov on 13.04.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct NewCircle: View {
    
    let width: CGFloat
    let height: CGFloat
    let startColor: Color
    let finishColor: Color
    
    var body: some View {
        
        Circle()
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [startColor, finishColor]),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .frame(width: width, height: height)
    }
}

struct NewCircle_Previews: PreviewProvider {
    static var previews: some View {
        NewCircle(width: 200, height: 200, startColor: Color.orange, finishColor: Color.red)
    }
}

