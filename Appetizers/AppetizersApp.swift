//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Vlad Furtuna on 09.03.2024.
//

import SwiftUI

@main
struct AppetizersApp: App {
    var body: some Scene {
        
        var order = Order()
        
        WindowGroup {
            AppetizerTabView().environment(order)
        }
    }
}
