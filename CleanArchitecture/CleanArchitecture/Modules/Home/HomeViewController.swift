//
//  HomeViewController.swift
//  CleanArchitecture
//
//  Created by cassio on 28/04/23.
//  Copyright (c) 2023 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IHomeViewController

protocol IHomeViewController: AnyObject {
    // do someting...
}

// MARK: - HomeViewController

class HomeViewController: UIViewController {
    var interactor: IHomeInteractor?
    var wireframe: IHomeWireframe?

    override func viewDidLoad() {
        super.viewDidLoad()
        // do someting...
    }
}

// MARK: IHomeViewController

extension HomeViewController: IHomeViewController {
    // do someting...
}

// MARK: HomeViewControllerDelegate

extension HomeViewController: HomeViewControllerDelegate {
    // do someting...
}
