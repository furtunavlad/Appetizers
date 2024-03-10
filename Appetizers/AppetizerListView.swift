//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Vlad Furtuna on 09.03.2024.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
                    .padding(.leading)
            }
            .navigationTitle("🍟 Appetizers")
        }
    }
}

#Preview {
    AppetizerListView()
}
