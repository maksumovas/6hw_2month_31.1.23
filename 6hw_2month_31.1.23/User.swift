//
//  User.swift
//  6hw_2month_31.1.23
//
//  Created by Maksumova Sofia on 2/2/23.
//

import Foundation

struct User {
    var firstName: String
    var lastName: String
    var phoneNumber: String
    var code: Country
    
    init(firstName: String, lastName: String, phoneNumber: String, code: Country) {
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
        self.code = code
    }
}
