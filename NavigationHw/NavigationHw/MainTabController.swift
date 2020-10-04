//
//  MainTabController.swift
//  NavigationHw
//
//  Created by Булат Хабибуллин on 01.10.2020.
//  Copyright © 2020 Bulat Khabibullin. All rights reserved.
//

import UIKit

class MainTabController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Новости недели"
    }
    
    @IBAction func showMoreInfoButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "MoreInfoViewController") as! MoreInfoViewController
        self.present(controller, animated: true)
    }
    
}
