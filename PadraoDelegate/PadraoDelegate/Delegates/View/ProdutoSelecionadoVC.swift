//
//  ProdutoSelecionadoDelegate.swift
//  PadraoDelegate
//
//  Created by cassio on 01/05/23.
//


import UIKit


/*
 Por exemplo, você pode definir um protocolo chamado ProtocoloNotificacao que tenha um método notificar() e uma propriedade mensagem. Qualquer classe ou struct que conformar a esse protocolo deve implementar o método notificar() e ter uma propriedade mensagem.
 Os protocolos em Swift são usados em muitas situações, incluindo para definir delegados, para fornecer funcionalidade compartilhada entre tipos diferentes e para permitir que as classes se comuniquem umas com as outras de forma segura e estruturada.
 */
protocol ProductSelectionDelegate {
    func didSelectProduct(name: String, imageName: String)
}


class ProdutoSelecionadoVC: UIViewController {
    
    let macBookButton = UIButton()
    let iPadButton = UIButton()
    
    /* Essa linha de código define uma propriedade chamada delegate
     de um determinado tipo, que é o ProductSelectionDelegate */
    var delegate: ProductSelectionDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func ipad(_ sender: Any) {
        iPadButtonTapped()
    
    }
    
    @IBAction func mac(_ sender: Any) {
        macBookButtonTapped()

    }
    
    
    @IBAction func iphone(_ sender: Any) {
        iPhoneButtonTapped()
     
    }
    
    
    @objc func iPhoneButtonTapped() {
        /*
         
         Essa linha declara uma propriedade delegate do tipo ProductSelectionDelegate?. Essa propriedade será usada para armazenar a referência ao objeto que implementa o protocolo ProductSelectionDelegate e que será usado como delegate na comunicação entre as view controllers.
         
         */
        
        delegate?.didSelectProduct(name: "iPhone 14", imageName: "iphone")
        dismiss(animated: true)
    }


    @objc func iPadButtonTapped() {
        delegate?.didSelectProduct(name: "iPad Air", imageName: "ipad")
        dismiss(animated: true)
    }


    @objc func macBookButtonTapped() {
        delegate?.didSelectProduct(name: "MacBook", imageName: "mac")
        dismiss(animated: true)
    }
    
   
}
