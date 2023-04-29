//
//  DetailInteractor.swift
//  CleanArchitecture
//
//  Created by cassio on 28/04/23.
//  Copyright (c) 2023 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IDetailInteractor

protocol IDetailInteractor: AnyObject {
    // do someting...
}

// MARK: - DetailInteractor

class DetailInteractor: IDetailInteractor {
    var manager: IDetailManager?
    var presenter: IDetailPresenter?

    init(presenter: IDetailPresenter?, manager: IDetailManager?) {
        self.presenter = presenter
        self.manager = manager
    }
}
