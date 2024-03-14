//
//  OrderView.swift
//  Appetizers
//
//  Created by Vlad Furtuna on 09.03.2024.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(orderItems) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("order placed")
                    } label: {
                        APButton(title: "$99.99 - Place Order")
                    }
                    .padding(.bottom, 25)
                }
                
                if orderItems.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order.")
                }
                
            }
            .navigationTitle("🧾 Orders")
        }
    }
    
    
    func deleteItems(at offests: IndexSet){
        orderItems.remove(atOffsets: offests)
    }
}

#Preview {
    OrderView()
}
