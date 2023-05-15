//
//  LoginProtocols.swift
//  TaekwondoPoints
//
//  Created by cassio on 12/05/23.
//

import Foundation


// MARK: - Router
protocol LoginRouterProtocol: AnyObject {
    func showPlayerList()
}

// MARK: - View
typealias LoginViewProtocol = LoginViewable & LoginViewConfigurable

protocol LoginViewable: AnyObject {
    var interactor: LoginInteractorProtocol { get set }
    var router: LoginRouterProtocol { get set }
}

protocol LoginViewConfigurable: AnyObject {
    func displayStoredCredentials(viewModel: Login.LoadCredentials.ViewModel)
    func loginCompleted(viewModel: Login.Autenticacao.ViewModel)
}

// MARK: - Interactor
typealias LoginInteractorProtocol = LoginInteractable & LoginInteractorServiceRequester

protocol LoginInteractable: AnyObject {
    var presenter: LoginPresenterProtocol { get set }
}

protocol LoginInteractorServiceRequester: AnyObject {
    func loadCredentials(request: Login.LoadCredentials.Request)
    func login(request: Login.Autenticacao.Solicitar)
    func register(request: Login.Autenticacao.Solicitar)
}

// MARK: - Presenter
typealias LoginPresenterProtocol = LoginPresentable & LoginPresenterServiceHandler

protocol LoginPresentable: AnyObject {
    var view: LoginViewProtocol? { get set }
}

protocol LoginPresenterServiceHandler: AnyObject {
    func presentCredentials(response: Login.LoadCredentials.Response)
    func authenticationCompleted(response: Login.Autenticacao.Resposta)
}
