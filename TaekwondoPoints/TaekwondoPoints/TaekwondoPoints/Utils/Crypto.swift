//
//  Crypto.swift
//  TaekwondoPoints
//
//  Created by cassio on 14/05/23.
//

import Foundation
import CommonCrypto

enum Crypto {
    static func hash(message: String) -> String? {
        guard let messageData = message.data(using: .utf8) else {
            return nil
        }

        var digest = [UInt8](repeating: 0, count:Int(CC_SHA256_DIGEST_LENGTH))
        
        _ = messageData.withUnsafeBytes {
            CC_SHA256($0.baseAddress, UInt32(messageData.count), &digest)
        }
        
        guard digest.count > 0 else {
            return nil
        }
        
        var hash = ""
        digest.forEach {
            hash += String(format:"%02x", UInt8($0))
        }
        
        return hash
    }
}
