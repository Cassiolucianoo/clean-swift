//
//  MainInteractor.swift
//  CleanArchitecture
//
//  Created by cassio on 28/04/23.
//  Copyright (c) 2023 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IMainInteractor

protocol IMainInteractor: AnyObject {
    // do someting...
}

// MARK: - MainInteractor

class MainInteractor: IMainInteractor {
    var manager: IMainManager?
    var presenter: IMainPresenter?

    init(presenter: IMainPresenter?, manager: IMainManager?) {
        self.presenter = presenter
        self.manager = manager
    }
}
