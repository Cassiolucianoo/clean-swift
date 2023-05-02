//
//  ViewController.swift
//  PadraoDelegate
//
//  Created by cassio on 01/05/23.
//

import UIKit

class ViewController: UIViewController, ProductSelectionDelegate{
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func didSelectProduct(name: String, imageName: String) {
        productNameLabel.text = name
        productImageView.image = UIImage(named: imageName)
        print("2 Produto que foi selecionado didSelectedProduto")
    }
    
    
    /*
     A principal função do prepare é permitir que você configure a próxima tela antes dela ser exibida. Isso é feito através da obtenção de uma referência para a próxima tela através do segue.destination, e em seguida, configurando-a como necessário.

     Por exemplo, você pode usar o prepare para passar dados entre as telas, configurar o título da próxima tela, ou qualquer outra coisa que você precise fazer antes de exibir a próxima tela para o usuário.

     Em resumo, a função prepare é uma forma de você personalizar a transição entre as telas e garantir que as informações necessárias sejam passadas para a próxima tela.
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "escolherMac" {
            let segundaVista = segue.destination as! ProdutoSelecionadoVC
            segundaVista.delegate = self
        }
    }
    
    
}

