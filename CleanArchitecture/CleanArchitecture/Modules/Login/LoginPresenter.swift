//
//  LoginPresenter.swift
//  CleanArchitecture
//
//  Created by cassio on 28/04/23.
//  Copyright (c) 2023 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - ILoginPresenter

protocol ILoginPresenter: AnyObject {
    // do someting...
}

// MARK: - LoginPresenter

class LoginPresenter: ILoginPresenter {
    weak var view: ILoginViewController?

    init(view: ILoginViewController?) {
        self.view = view
    }
}
