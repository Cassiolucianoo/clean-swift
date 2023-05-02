//
//  ViewController.swift
//  PadraoDelegate
//
//  Created by cassio on 01/05/23.
//

import UIKit

class ViewController: UIViewController{
    

    
    @objc func presentProductSelectionVC() {
        let destinationVC = ProdutoSelecionadoVC()
        //destinationVC.delegate = self

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

