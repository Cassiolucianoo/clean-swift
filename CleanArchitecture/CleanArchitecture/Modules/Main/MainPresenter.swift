//
//  MainPresenter.swift
//  CleanArchitecture
//
//  Created by cassio on 28/04/23.
//  Copyright (c) 2023 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IMainPresenter

protocol IMainPresenter: AnyObject {
    // do someting...
}

// MARK: - MainPresenter

class MainPresenter: IMainPresenter {
    weak var view: IMainViewController?

    init(view: IMainViewController?) {
        self.view = view
    }
}
