//
//  SwiftLogo.swift
//  AwordsCollectionApp
//
//  Created by Aleksei Goranov on 13.04.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct SwiftLogo: View {
    
    let width: CGFloat
    let height: CGFloat
    let startColor: Color
    let finishColor: Color
    
    var body: some View {
        ZStack {
            NewCircle(
                width: width,
                height: height,
                startColor: startColor,
                finishColor: finishColor
            )
            NewCircle(
                width: width/2,
                height: height/2,
                startColor: finishColor,
                finishColor: startColor
            )
        }
    }
}

struct SwiftLogo_Previews: PreviewProvider {
    static var previews: some View {
        SwiftLogo(
            width: 200,
            height: 200,
            startColor: Color.red,
            finishColor: Color.orange
        )
    }
}

