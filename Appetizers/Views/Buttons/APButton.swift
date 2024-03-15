//
//  APButton.swift
//  Appetizers
//
//  Created by Vlad Furtuna on 11.03.2024.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey // for the specifier %.2f
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 275, height: 50)
            .foregroundColor(.white)
            .background(Color.accentColor)
            .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    APButton(title: "Test Title")
}
