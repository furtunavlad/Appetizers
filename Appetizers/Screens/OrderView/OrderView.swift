//
//  OrderView.swift
//  Appetizers
//
//  Created by Vlad Furtuna on 09.03.2024.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                }
                
                VStack {
                    Spacer()
                    
                    Button {
                        print("order placed")
                    } label: {
//                        APButton(title: "RON \(order.totalPrice, specifier: "%.2f") - Place Order")
                        Text("RON \(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order.")
                }
          
            }
            .navigationTitle("🧾 Orders")
        }
    }
}

#Preview {
    OrderView()
        .environmentObject(Order())
}
