//
//  LoginPresenter.swift
//  TaekwondoPoints
//
//  Created by cassio on 11/05/23.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol LoginPresentationLogic {
    func presentSomething(response: Login.Something.Response)
}

class LoginPresenter: LoginPresentationLogic {
    weak var viewController: LoginDisplayLogic?

    // MARK: Parse and calc respnse from LoginInteractor and send simple view model to LoginViewController to be displayed

    func presentSomething(response: Login.Something.Response) {
        let viewModel = Login.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
//
//    func presentSomethingElse(response: Login.SomethingElse.Response) {
//        let viewModel = Login.SomethingElse.ViewModel()
//        viewController?.displaySomethingElse(viewModel: viewModel)
//    }
}