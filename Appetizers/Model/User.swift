//
//  User.swift
//  Appetizers
//
//  Created by Vlad Furtuna on 12.03.2024.
//

import Foundation

struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
