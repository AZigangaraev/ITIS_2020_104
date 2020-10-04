//
//  TapBarController.swift
//  NikitaSosyuk
//
//  Created by Nikita Sosyuk on 01.10.2020.
//  Copyright © 2020 Nikita Sosyuk. All rights reserved.
//

import UIKit

class TapBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let viewControllers = viewControllers, viewControllers.count == 2 else { return }
        
        viewControllers[0].tabBarItem.title = "Главная"
        viewControllers[0].tabBarItem.image = UIImage(systemName: "house.fill")
        viewControllers[1].tabBarItem.title = "Профиль"
        viewControllers[1].tabBarItem.image = UIImage(systemName: "person.fill")
    }
    
}
