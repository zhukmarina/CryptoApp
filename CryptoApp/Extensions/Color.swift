//
//  Color.swift
//  CryptoApp
//
//  Created by Marina Zhukova on 09.12.2024.
//

import Foundation
import SwiftUI

extension Color{
    
    static let theme = ColorTheme()
    
}

struct ColorTheme{
    
    let accentColor = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}
