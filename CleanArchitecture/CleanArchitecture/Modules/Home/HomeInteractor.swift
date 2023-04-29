//
//  HomeInteractor.swift
//  CleanArchitecture
//
//  Created by cassio on 28/04/23.
//  Copyright (c) 2023 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IHomeInteractor

protocol IHomeInteractor: AnyObject {
    // do someting...
}

// MARK: - HomeInteractor

class HomeInteractor: IHomeInteractor {
    var manager: IHomeManager?
    var presenter: IHomePresenter?

    init(presenter: IHomePresenter?, manager: IHomeManager?) {
        self.presenter = presenter
        self.manager = manager
    }
}
