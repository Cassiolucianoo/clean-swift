//
//  NetworkService.swift
//  TaekwondoPoints
//
//  Created by cassio on 14/05/23.
//
import Foundation

// MARK: - NetworkService
protocol NetworkService {
    var session: NetworkSession { get set }
    var urlRequest: URLRequestFactory { get set }
    
 
}
// MARK: - ID model
enum ResourceID {
    case integer(Int)
    case uuid(UUID)
}

// MARK: - Basic implementation
struct StandardNetworkService: NetworkService {
    var session: NetworkSession
    var urlRequest: URLRequestFactory
    private var appKeychain: ApplicationKeychain
    
    init(session: NetworkSession = URLSession.shared,
         urlRequest: URLRequestFactory,
         appKeychain: ApplicationKeychain = TaeKondoPontosKeychain.shared) {
        self.session = session
        self.urlRequest = urlRequest
        self.appKeychain = appKeychain
    }
    
    init(resourcePath: String, authenticated: Bool = false) {
        let endpoint = StandardEndpoint(path: resourcePath)
        if authenticated == false {
            self.init(urlRequest: StandardURLRequestFactory(endpoint: endpoint))
        } else {
            self.init(urlRequest: AuthURLRequestFactory(endpoint: endpoint))
        }
    }
}
