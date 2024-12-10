//
//  CircleButtonAnimationView.swift
//  CryptoApp
//
//  Created by Marina Zhukova on 09.12.2024.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    
    @Binding  var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scaleEffect(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(.easeOut(duration: 1.0), value: animate)
          
    }
}


