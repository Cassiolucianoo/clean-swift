//
//  MainWireframe.swift
//  CleanArchitecture
//
//  Created by cassio on 28/04/23.
//  Copyright (c) 2023 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit
import AppsRouter

// MARK: - MainViewControllerDelegate

protocol MainViewControllerDelegate: AnyObject {
    // do someting...
}

// MARK: - IMainWireframe

protocol IMainWireframe {
    func presentView()
}

// MARK: - MainWireframe

class MainWireframe: IMainWireframe {
    var appRouter: IAppRouter

    init(appRouter: IAppRouter) {
        self.appRouter = appRouter
    }

    func presentView() {
        let view = appRouter.resolver.resolve(MainViewController.self, argument: appRouter)!
        appRouter.presentView(view: view)
    }
}
