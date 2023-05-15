//
//  UserRequestModel.swift
//  TaekwondoPoints
//
//  Created by cassio on 14/05/23.
//

import Foundation

// MARK: - Model
struct UserRequestModel: Encodable {
    let username: String
    var password: String
}

extension UserRequestModel {
    mutating func hashPassword() {
        self.password = Crypto.hash(message: password)!
    }
}
