//
//  HomePresenter.swift
//  CleanArchitecture
//
//  Created by cassio on 28/04/23.
//  Copyright (c) 2023 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IHomePresenter

protocol IHomePresenter: AnyObject {
    // do someting...
}

// MARK: - HomePresenter

class HomePresenter: IHomePresenter {
    weak var view: IHomeViewController?

    init(view: IHomeViewController?) {
        self.view = view
    }
}
