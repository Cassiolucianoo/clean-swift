//
//  ProfilePresenter.swift
//  CleanArchitecture
//
//  Created by cassio on 28/04/23.
//  Copyright (c) 2023 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IProfilePresenter

protocol IProfilePresenter: AnyObject {
    // do someting...
}

// MARK: - ProfilePresenter

class ProfilePresenter: IProfilePresenter {
    weak var view: IProfileViewController?

    init(view: IProfileViewController?) {
        self.view = view
    }
}
