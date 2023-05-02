//
//  ProdutoSelecionadoDelegate.swift
//  PadraoDelegate
//
//  Created by cassio on 01/05/23.
//

import Foundation
import UIKit


protocol ProductSelectionDelegate {
    func didSelectProduct(name: String, imageName: String)
}


class ProdutoSelecionadoVC: UIViewController {
    
    
    var delegate: ProductSelectionDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc func iPhoneButtonTapped() {
        delegate?.didSelectProduct(name: "iPhone 14", imageName: "iphone")
        dismiss(animated: true)
    }
    
    
}
