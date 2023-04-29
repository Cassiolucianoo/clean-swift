//
//  LoginInteractor.swift
//  CleanArchitecture
//
//  Created by cassio on 28/04/23.
//  Copyright (c) 2023 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - ILoginInteractor

protocol ILoginInteractor: AnyObject {
    // do someting...
}

// MARK: - LoginInteractor

class LoginInteractor: ILoginInteractor {
    var manager: ILoginManager?
    var presenter: ILoginPresenter?

    init(presenter: ILoginPresenter?, manager: ILoginManager?) {
        self.presenter = presenter
        self.manager = manager
    }
}
