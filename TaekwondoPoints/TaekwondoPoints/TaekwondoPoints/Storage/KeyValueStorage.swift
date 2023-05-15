//
//  KeyValueStorage.swift
//  TaekwondoPoints
//
//  Created by cassio on 14/05/23.
//

import Foundation

protocol KeyValueStorage {
    func string(forKey key: String) -> String?
    func data(forKey key: String) -> Data?
    func bool(forKey key: String) -> Bool?
    
    func set(_ value: String, key: String)
    func set(_ value: Data, key: String)
    func set(_ value: Bool, key: String)
    
    func removeValue(forKey key: String)
    func removeAll()
}
