//
//  Order.swift
//  Appetizers
//
//  Created by Vlad Furtuna on 14.03.2024.
//

import SwiftUI

final class Order: Observable, ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    
    func deleteItems(at offsets: IndexSet){
        items.remove(atOffsets: offsets)
    }
}
