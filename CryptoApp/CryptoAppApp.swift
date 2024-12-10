//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Marina Zhukova on 09.12.2024.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
