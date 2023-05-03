
import UIKit

protocol HomeRoutingLogic {
    // Define as rotas da tela
    func routeToDetail()
}

class HomeRouter: NSObject, HomeRoutingLogic {
    weak var viewController: UIViewController?
    
    init(viewController: UIViewController) {
           self.viewController = viewController
       }
    
    let detailViewController = DetailViewController()
    
    // Implemente as rotas da tela
    func routeToDetail() {
        let destinationVC = DetailViewController()
        
      // navigationController?.pushViewController(detailViewController, animated: true)
        viewController?.navigationController?.pushViewController(destinationVC, animated: true)
        print("Abrindo view controller verde aqui")
    
    }
}


       
