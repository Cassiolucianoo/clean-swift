//
//  LoginService.swift
//  TaekwondoPoints
//
//  Created by cassio on 14/05/23.
//


import Foundation

// MARK: - Service
final class LoginService: NetworkService {
    var session: NetworkSession
    var urlRequest: URLRequestFactory
    private var appKeychain: ApplicationKeychain
    
    init(session: NetworkSession = URLSession.shared,
         urlRequest: URLRequestFactory = StandardURLRequestFactory(endpoint: StandardEndpoint("/api/users/login")),
         appKeychain: ApplicationKeychain = TaeKondoPontosKeychain.shared) {
        self.session = session
        self.urlRequest = urlRequest
        self.appKeychain = appKeychain
    }
    
    func login(user: UserRequestModel, completion: @escaping (Result<Bool, Error>) -> Void) {
        var request = urlRequest.makeURLRequest()
        request.httpMethod = "POST"
        
        let basicAuth = BasicAuth(username: user.username, password: Crypto.hash(message: user.password)!)
        request.setValue("Basic \(basicAuth.encoded)", forHTTPHeaderField: "Authorization")
        
        session.loadData(from: request) { [weak self] (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data, data.isEmpty == false else {
                completion(.failure(ServiceError.expectedDataInResponse))
                return
            }
            
            guard let loginResponse = try? JSONDecoder().decode(LoginResponseModel.self, from: data) else {
                completion(.failure(ServiceError.unexpectedResponse))
                return
            }
            
            self?.appKeychain.token = loginResponse.token
            
            completion(.success(true))
        }
    }
    
}

