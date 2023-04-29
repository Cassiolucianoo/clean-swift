//
//  DetailViewController.swift
//  CleanArchitecture
//
//  Created by cassio on 28/04/23.
//  Copyright (c) 2023 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IDetailViewController

protocol IDetailViewController: AnyObject {
    // do someting...
}

// MARK: - DetailViewController

class DetailViewController: UIViewController {
    var interactor: IDetailInteractor?
    var wireframe: IDetailWireframe?

    override func viewDidLoad() {
        super.viewDidLoad()
        // do someting...
    }
}

// MARK: IDetailViewController

extension DetailViewController: IDetailViewController {
    // do someting...
}

// MARK: DetailViewControllerDelegate

extension DetailViewController: DetailViewControllerDelegate {
    // do someting...
}
