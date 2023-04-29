//
//  ProfileWireframe.swift
//  CleanArchitecture
//
//  Created by cassio on 28/04/23.
//  Copyright (c) 2023 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit
import AppsRouter

// MARK: - ProfileViewControllerDelegate

protocol ProfileViewControllerDelegate: AnyObject {
    // do someting...
}

// MARK: - IProfileWireframe

protocol IProfileWireframe {
    func presentView()
}

// MARK: - ProfileWireframe

class ProfileWireframe: IProfileWireframe {
    var appRouter: IAppRouter

    init(appRouter: IAppRouter) {
        self.appRouter = appRouter
    }

    func presentView() {
        let view = appRouter.resolver.resolve(ProfileViewController.self, argument: appRouter)!
        appRouter.presentView(view: view)
    }
}
