//
//  DetailWireframe.swift
//  CleanArchitecture
//
//  Created by cassio on 28/04/23.
//  Copyright (c) 2023 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit
import AppsRouter

// MARK: - DetailViewControllerDelegate

protocol DetailViewControllerDelegate: AnyObject {
    // do someting...
}

// MARK: - IDetailWireframe

protocol IDetailWireframe {
    func presentView()
}

// MARK: - DetailWireframe

class DetailWireframe: IDetailWireframe {
    var appRouter: IAppRouter

    init(appRouter: IAppRouter) {
        self.appRouter = appRouter
    }

    func presentView() {
        let view = appRouter.resolver.resolve(DetailViewController.self, argument: appRouter)!
        appRouter.presentView(view: view)
    }
}
