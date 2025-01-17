//
//  HapticManager.swift
//  CryptoApp
//
//  Created by Marina Zhukova on 17.01.2025.
//

import Foundation
import SwiftUI

class HapticManager {
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type:UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
