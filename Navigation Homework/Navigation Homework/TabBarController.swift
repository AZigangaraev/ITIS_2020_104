//
//  TabBarController.swift
//  Navigation Homework
//
//  Created by Никита Ляпустин on 01.10.2020.
//  Copyright © 2020 Pasandep. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        super.viewDidLoad()

        guard let viewControllers = viewControllers, viewControllers.count == 2 else { return }

        viewControllers[0].tabBarItem.title = "Главная"
        viewControllers[0].tabBarItem.image = UIImage(systemName: "doc.richtext")
        
        viewControllers[1].tabBarItem.title = "Профиль"
        viewControllers[1].tabBarItem.image = UIImage(systemName: "person.crop.circle")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
