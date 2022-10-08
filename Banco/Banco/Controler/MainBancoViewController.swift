//
//  MainBancoViewController.swift
//  Banco
//
//  Created by ICMMAC09-BF7F on 01/10/22.
//

import UIKit

class MainBancoViewController: UIViewController {

    var managerClient = managerClientes()
    let MAIN_BANC = UIStoryboard(name: "MainBancoAnaClif", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showViewAddClient(_ sender: Any) {
        let ADD_CLIENT: AddClientViewController = MAIN_BANC.instantiateViewController(withIdentifier: "addCLient") as! AddClientViewController
        ADD_CLIENT.managerClient = managerClient
        self.present(ADD_CLIENT, animated: true, completion: nil)
        performSegue(withIdentifier: "segueAddClient", sender: nil)
    }
    
    @IBAction func showViewListClient(_ sender: Any) {
        let LIST_CLIENT: ListClientViewController = MAIN_BANC.instantiateViewController(withIdentifier: "ListClient") as! ListClientViewController
        LIST_CLIENT.managerClient = managerClient
        self.present(LIST_CLIENT, animated: true, completion: nil)
        performSegue(withIdentifier: "segueListClient", sender: nil)
    }
    @IBAction func returnMainView(segue: UIStoryboardSegue){
    }
}
