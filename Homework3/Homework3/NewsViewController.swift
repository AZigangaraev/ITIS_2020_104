//
//  NewsViewController.swift
//  Homework3
//
//  Created by Svetlana Safonova on 30.09.2020.
//  Copyright © 2020 Svetlana Safonova. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarItem.title = "Главная"
        
        
    }
    
    enum SegueIdentifire: String {
           case modal = "ModalPresentation"
       }
       
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           guard
               let segueIdentifireRaw = segue.identifier,
               let segueIdentifire = SegueIdentifire(rawValue: segueIdentifireRaw)
           else { return }
           switch segueIdentifire{
           case .modal:
               guard
                   let navigationController = segue.destination as? UINavigationController,
                   let controller = navigationController.topViewController as? SeeMoreViewController
                   else { return }
                   
           }
       }

    let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
    
    @IBAction private func seeMore() {
        
        let seeMoreController: SeeMoreViewController = mainStoryboard.instantiateViewController(identifier: "seemore")
        let navigationController = UINavigationController(rootViewController: seeMoreController)
//        navigationController.modalPresentationStyle = .fullScreen
        present(navigationController, animated: true, completion: nil)
    }
}
