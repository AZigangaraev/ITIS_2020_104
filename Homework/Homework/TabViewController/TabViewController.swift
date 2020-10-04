//
//  TabViewController.swift
//  Homework
//
//  Created by Joseph on 01.10.2020.
//

import UIKit

protocol UITabBarControllerDelegate: UITabBarController {
    var name: String? { get set }
}

class TabViewController: UITabBarController, UITabBarControllerDelegate {
    var name: String? = "NO name detected"

    lazy var mainC = MainTabController()
    var profileC: ProfileTabController?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true

        self.profileC = UIStoryboard(name: "ProfileTab", bundle: nil).instantiateViewController(identifier: "ProfileTabController")
        
        profileC!.delegate = self
        mainC.delegate = self
        
        self.viewControllers = [mainC, profileC!]
    }

    override func viewWillAppear(_ animated: Bool) {
        mainC.tabBarItem.image = UIImage(systemName: "folder")
        mainC.title = "Menu"

        profileC!.tabBarItem.image = UIImage(systemName: "person.crop.circle.fill")
        profileC!.title = "Profile"
    }

    //Delegate methods
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        print("Should select viewController: \(viewController.title ?? "") ?")
        return true
    }
}
