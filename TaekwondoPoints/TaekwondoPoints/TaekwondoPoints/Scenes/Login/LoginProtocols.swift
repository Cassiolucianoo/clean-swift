//
//  LoginProtocols.swift
//  TaekwondoPoints
//
//  Created by cassio on 12/05/23.
//

import Foundation


typealias LoginInteractorProtocol = LoginInteractable

// MARK: - Interactor
typealias LoginInteractorProtocol = LoginInteractable 

protocol LoginInteractable: AnyObject {
    //var presenter: LoginPresenterProtocol { get set }
}

protocol LoginDisplayLogic: AnyObject
{
    func displaySomething(viewModel: Login.Something.ViewModel)
//    func displaySomethingElse(viewModel: Login.SomethingElse.ViewModel)
}


