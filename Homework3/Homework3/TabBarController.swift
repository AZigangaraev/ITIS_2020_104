//
//  TabBarController.swift
//  Homework3
//
//  Created by Svetlana Safonova on 28.09.2020.
//  Copyright © 2020 Svetlana Safonova. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let viewControllers = viewControllers, viewControllers.count == 2 else {return}
        
        viewControllers[0].tabBarItem.title = "Главная"
        viewControllers[1].tabBarItem.title = "Профиль"
        
    }
    

 


}
