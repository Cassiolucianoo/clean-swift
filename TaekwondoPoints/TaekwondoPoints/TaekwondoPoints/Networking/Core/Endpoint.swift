//
//  Endpoint.swift
//  TaekwondoPoints
//
//  Created by cassio on 14/05/23.
//

import Foundation

// MARK: - Endpoint
protocol Endpoint {
    var path: String { get set }
    var queryItems: [URLQueryItem]? { get set }
    
    var scheme: String? { get }
    var host: String? { get }
    var port: Int? { get }
    var url: URL? { get }
}

extension Endpoint {
    var url: URL? {
        var components = URLComponents()
        components.scheme = scheme
        components.host = host
        components.path = path
        components.queryItems = queryItems
        components.port = port
        
        return components.url
    }
}

// MARK: - Basic implementation
struct StandardEndpoint: Endpoint {
    var path: String
    var queryItems: [URLQueryItem]? = nil
    var scheme: String? = "http"
    var host: String? = "localhost"
    var port: Int? = 3000
    
    init(path: String) {
        self.path = path
    }
}

extension StandardEndpoint: ExpressibleByStringLiteral {
    init(stringLiteral value: StringLiteralType) {
        path = value
    }
}
