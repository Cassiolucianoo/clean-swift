//
//  TaekwondoUserDefaults.swift
//  TaekwondoPoints
//
//  Created by cassio on 14/05/23.
//

import Foundation

final class TaekwondoUserDefaults {
    
    private enum Keys {
        static let rememberMe = "footballgather_remember"
    }
    
    let storage: KeyValueStorage
    static let shared: TaekwondoUserDefaults = .init()
    
    init(storage: KeyValueStorage = UserDefaultsWrapper()) {
        self.storage = storage
    }
    
    var rememberUsername: Bool? {
        get {
            return storage.bool(forKey: Keys.rememberMe)
        }
        set {
            if let newValue = newValue {
                storage.set(newValue, key: Keys.rememberMe)
            } else {
                storage.removeValue(forKey: Keys.rememberMe)
            }
            
        }
    }
    
}
