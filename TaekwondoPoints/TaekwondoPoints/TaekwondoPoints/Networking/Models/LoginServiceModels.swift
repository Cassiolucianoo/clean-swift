//
//  LoginServiceModels.swift
//  TaekwondoPoints
//
//  Created by cassio on 14/05/23.
//

import Foundation


import Foundation

// MARK: - Response model
struct LoginResponseModel: Decodable {
    let token: String
}

// MARK: - Basic auth model
struct BasicAuth {
    let username: String
    let password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    var encoded: String {
        
        let loginString = String(format: "%@:%@", username, password)
        let loginData = loginString.data(using: String.Encoding.utf8)!
        let base64LoginString = loginData.base64EncodedString()
        
        return base64LoginString
    }
}
