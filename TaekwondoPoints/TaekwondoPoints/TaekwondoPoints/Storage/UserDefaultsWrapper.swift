//
//  UserDefaultsWrapper.swift
//  TaekwondoPoints
//
//  Created by cassio on 14/05/23.
//

import Foundation

import Foundation

final class UserDefaultsWrapper {
    
    let userDefaults: UserDefaults
    
    init(userDefaults: UserDefaults = .standard) {
        self.userDefaults = userDefaults
    }
    
}

extension UserDefaultsWrapper: KeyValueStorage {
    func set(_ value: Data, key: String) {
        userDefaults.setValue(value, forKey: key)
    }
    
    func set(_ value: String, key: String) {
        userDefaults.setValue(value, forKey: key)
    }
    
    func set(_ value: Bool, key: String) {
        userDefaults.setValue(value, forKey: key)
    }
    
    func string(forKey key: String) -> String? {
        return userDefaults.string(forKey: key)
    }
    
    func data(forKey key: String) -> Data? {
        return userDefaults.data(forKey: key)
    }
    
    func bool(forKey key: String) -> Bool? {
        if userDefaults.value(forKey: key) != nil {
            return userDefaults.bool(forKey: key)
        } else {
            return nil
        }
    }
    
    func removeValue(forKey key: String) {
        userDefaults.removeObject(forKey: key)
    }
    
    func removeAll() {
        userDefaults.dictionaryRepresentation().keys.forEach {
            userDefaults.removeObject(forKey: $0)
        }
    }
}
