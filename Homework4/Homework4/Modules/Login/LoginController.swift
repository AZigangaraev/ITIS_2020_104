//
//  ViewController.swift
//  Homework4
//
//  Created by Олег Романов on 03.10.2020.
//

import UIKit

class LoginController: UIViewController {
    
    lazy var loginView: LoginView? = view as? LoginView

    init() {
        super.init(nibName: "LoginView", bundle: Bundle(for: LoginController.self))
        loginView?.delegate = self
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LoginController: LoginViewDelegate {
    func loginButtonClicked(name: String) {
        let tabBarController = UITabBarController()
        let profileController = UINavigationController(
            rootViewController:  ProfileController(name: name)
        )
        let newsController = UINavigationController(
            rootViewController:  NewsController()
        )
        tabBarController.viewControllers = [newsController, profileController]
        tabBarController.selectedIndex = 1
        UIApplication.shared.delegate?.window??.rootViewController = tabBarController
    }
}
