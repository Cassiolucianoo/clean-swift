//
//  ProfileInteractor.swift
//  CleanArchitecture
//
//  Created by cassio on 28/04/23.
//  Copyright (c) 2023 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IProfileInteractor

protocol IProfileInteractor: AnyObject {
    // do someting...
}

// MARK: - ProfileInteractor

class ProfileInteractor: IProfileInteractor {
    var manager: IProfileManager?
    var presenter: IProfilePresenter?

    init(presenter: IProfilePresenter?, manager: IProfileManager?) {
        self.presenter = presenter
        self.manager = manager
    }
}
