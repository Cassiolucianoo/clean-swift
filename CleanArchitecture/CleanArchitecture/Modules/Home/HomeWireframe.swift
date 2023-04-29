//
//  HomeWireframe.swift
//  CleanArchitecture
//
//  Created by cassio on 28/04/23.
//  Copyright (c) 2023 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit
import AppsRouter

// MARK: - HomeViewControllerDelegate

protocol HomeViewControllerDelegate: AnyObject {
    // do someting...
}

// MARK: - IHomeWireframe

protocol IHomeWireframe {
    func presentView()
}

// MARK: - HomeWireframe

class HomeWireframe: IHomeWireframe {
    var appRouter: IAppRouter

    init(appRouter: IAppRouter) {
        self.appRouter = appRouter
    }

    func presentView() {
        let view = appRouter.resolver.resolve(HomeViewController.self, argument: appRouter)!
        appRouter.presentView(view: view)
    }
}
