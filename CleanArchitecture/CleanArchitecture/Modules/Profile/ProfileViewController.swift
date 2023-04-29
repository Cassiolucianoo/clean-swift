//
//  ProfileViewController.swift
//  CleanArchitecture
//
//  Created by cassio on 28/04/23.
//  Copyright (c) 2023 Stockbit - ARI MUNANDAR. All rights reserved.

import UIKit

// MARK: - IProfileViewController

protocol IProfileViewController: AnyObject {
    // do someting...
}

// MARK: - ProfileViewController

class ProfileViewController: UIViewController {
    var interactor: IProfileInteractor?
    var wireframe: IProfileWireframe?

    override func viewDidLoad() {
        super.viewDidLoad()
        // do someting...
    }
}

// MARK: IProfileViewController

extension ProfileViewController: IProfileViewController {
    // do someting...
}

// MARK: ProfileViewControllerDelegate

extension ProfileViewController: ProfileViewControllerDelegate {
    // do someting...
}
