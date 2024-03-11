//
//  ContentView.swift
//  Appetizers
//
//  Created by Vlad Furtuna on 09.03.2024.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }

        }
        .accentColor(Color(.brandPrimary))
    }
}

#Preview {
    AppetizerTabView()
}
