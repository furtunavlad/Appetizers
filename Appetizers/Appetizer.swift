//
//  Appetizer.swift
//  Appetizers
//
//  Created by Vlad Furtuna on 09.03.2024.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 001,
                                           name: "test appetizer",
                                           description: "this is the description for my appetizer",
                                           price: 10.99,
                                           imageURL: "",
                                           calories: 250,
                                           protein: 59,
                                           carbs: 80)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
