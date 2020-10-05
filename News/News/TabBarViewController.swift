//
//  TabBarViewController.swift
//  News
//
//  Created by Albert Ahmadiev on 05.10.2020.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let viewControllers = viewControllers, viewControllers.count == 2 else { return }
        
        viewControllers[0].tabBarItem.title = "Главная"
        viewControllers[0].tabBarItem.image = UIImage(systemName: "house.fill")
        viewControllers[1].tabBarItem.title = "Профиль"
        viewControllers[1].tabBarItem.image = UIImage(systemName: "person.fill")
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
