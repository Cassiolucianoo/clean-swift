
import UIKit

protocol HomeRoutingLogic {
    // Define as rotas da tela
    func routeToDetail()
}

class HomeRouter: NSObject, HomeRoutingLogic {
    
    weak var viewController: UIViewController?
    let detailViewController = DetailViewController()
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    // Implemente as rotas da tela
    func routeToDetail() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let novaViewController = storyboard.instantiateViewController(withIdentifier: "NovaViewControllerID")
        // navigationController?.pushViewController(novaViewController, animated: true)
        viewController?.navigationController!.pushViewController(novaViewController, animated: true)
        
        //        let destinationVC = DetailViewController()
        
        // navigationController?.pushViewController(detailViewController, animated: true)
        //        viewController?.navigationController?.pushViewController(destinationVC, animated: true)
        print("Abrindo View Homer")
        
    }
    
}
