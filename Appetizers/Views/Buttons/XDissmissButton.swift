//
//  XDissmissButton.swift
//  Appetizers
//
//  Created by Vlad Furtuna on 11.03.2024.
//

import SwiftUI

struct XDissmissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 44, height: 44)
                .foregroundColor(.accentColor)
        }
    }
}

#Preview {
    XDissmissButton()
}
