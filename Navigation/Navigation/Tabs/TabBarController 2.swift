//
//  TabBarController.swift
//  Navigation
//
//  Created by Amir Zigangarayev on 28.09.2020.
//

import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let viewControllers = viewControllers, viewControllers.count == 2 else { return }

        viewControllers[0].tabBarItem.title = "First Tab"
        viewControllers[1].tabBarItem.title = "Second Tab"
    }
}
