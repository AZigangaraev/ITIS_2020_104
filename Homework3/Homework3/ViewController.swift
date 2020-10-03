//
//  ViewController.swift
//  Homework3
//
//  Created by Svetlana Safonova on 28.09.2020.
//  Copyright © 2020 Svetlana Safonova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    enum SegueIdentifire: String {
        case modal = "ModalPresentation"
        case push = "PushPresentition"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            let segueIdentifireRaw = segue.identifier,
            let segueIdentifire = SegueIdentifire(rawValue: segueIdentifireRaw)
        else { return }
        
        switch segueIdentifire{
        case .modal:
            guard
                let navigationController = segue.destination as? UITabBarController,
                let controller = navigationController.tabBarController as? TabBarController
                else { return }
            
        case .push:
            guard let controller = segue.destination as? ProfileViewController else { return }
        
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWiilAppear")
    }
    
    private let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
   
    
    @IBAction private func buttonTap() {
        let modalController: TabBarController = mainStoryboard.instantiateViewController(identifier: "TabBar")
        let navigationController = UINavigationController(rootViewController: modalController)
        navigationController.modalPresentationStyle = .fullScreen
        let users = Users()
        
      
        if nameField.hasText == true {
            print(nameField.text!)
        users.add(username: nameField.text!)
            present(navigationController,animated: true, completion: nil)
    }

}
}
