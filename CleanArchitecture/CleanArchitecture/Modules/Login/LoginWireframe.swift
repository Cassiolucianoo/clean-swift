//
//  LoginWireframe.swift
//  CleanArchitecture
//
//  Created by cassio on 28/04/23.
//  Copyright (c) 2023 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit
import AppsRouter

// MARK: - LoginViewControllerDelegate

protocol LoginViewControllerDelegate: AnyObject {
    // do someting...
}

// MARK: - ILoginWireframe

protocol ILoginWireframe {
    func presentView()
}

// MARK: - LoginWireframe

class LoginWireframe: ILoginWireframe {
    var appRouter: IAppRouter

    init(appRouter: IAppRouter) {
        self.appRouter = appRouter
    }

    func presentView() {
        let view = appRouter.resolver.resolve(LoginViewController.self, argument: appRouter)!
        appRouter.presentView(view: view)
    }
}
