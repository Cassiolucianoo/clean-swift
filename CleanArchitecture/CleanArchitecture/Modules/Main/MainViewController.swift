//
//  MainViewController.swift
//  CleanArchitecture
//
//  Created by cassio on 28/04/23.
//  Copyright (c) 2023 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IMainViewController

protocol IMainViewController: AnyObject {
    // do someting...
}

// MARK: - MainViewController

class MainViewController: UIViewController {
    var interactor: IMainInteractor?
    var wireframe: IMainWireframe?

    override func viewDidLoad() {
        super.viewDidLoad()
        // do someting...
    }
}

// MARK: IMainViewController

extension MainViewController: IMainViewController {
    // do someting...
}

// MARK: MainViewControllerDelegate

extension MainViewController: MainViewControllerDelegate {
    // do someting...
}
