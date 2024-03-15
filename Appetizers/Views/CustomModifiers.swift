//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Vlad Furtuna on 14.03.2024.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.accentColor)
            .controlSize(.large)
            .fontWeight(.semibold)
    }
}
