//
//  UIApplication.swift
//  CryptoApp
//
//  Created by Marina Zhukova on 06.01.2025.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
