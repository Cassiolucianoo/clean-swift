//
//  DetailPresenter.swift
//  CleanArchitecture
//
//  Created by cassio on 28/04/23.
//  Copyright (c) 2023 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IDetailPresenter

protocol IDetailPresenter: AnyObject {
    // do someting...
}

// MARK: - DetailPresenter

class DetailPresenter: IDetailPresenter {
    weak var view: IDetailViewController?

    init(view: IDetailViewController?) {
        self.view = view
    }
}
