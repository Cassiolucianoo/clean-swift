//
//  ViewController.swift
//  StartingRouter
//
//  Created by cassio on 02/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    var router: HomeRoutingLogic?
    // let detailViewController = DetailViewController()
    
    
    @IBAction func detailButtonTapped(_ sender: Any) {
        router?.routeToDetail()
        print("opa")
        //        present(detailViewController, animated: true){
        //            print("Nova tela apresentada com sucesso!")
        //        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        router = HomeRouter(viewController: self)
        
    }
}

