//
//  Petal.swift
//  Breathing Flower
//
//  Created by Victor Mac on 11/11/21.
//

import SwiftUI

struct Petal: View {
    
    @Binding var petal: Bool
    var degrees: Double = 0.0
    
    var body: some View {
        Image("flower")
            .resizable()
            .frame(width: 75, height: 125)
            .rotationEffect(.degrees(petal ? degrees : degrees), anchor: .bottom)
            .animation(Animation.easeInOut(duration: 2).delay(2).repeatForever(autoreverses: true))
    }
}
