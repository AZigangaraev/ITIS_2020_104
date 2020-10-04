//
//  ViewController.swift
//  Homework2
//
//  Created by Олег Романов on 18.09.2020.
//  Copyright © 2020 Oleg Romanov. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    private let loginCustomView: LoginView = LoginView()
    private let signUpCustomView: SignUpView = SignUpView()
    
    private var dictionary: [String: String] = ["admin" : "admin", "qwerty" : "qwerty"]

    override func loadView() {
        view = loginCustomView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginCustomView.delegate = self
        signUpCustomView.delegate = self
    }
}

extension LoginController: SignInDelegate {
    func login(login: String, password: String) {
        var isCorrect: Bool = false
        for key in dictionary {
            if key.key == login && key.value == password {
                isCorrect = true
            }
        }
        if isCorrect {
            let tabBarController = UITabBarController()
            let profileController = UINavigationController(
                rootViewController:  ProfileController(name: login)
            )
            let newsController = UINavigationController(
                rootViewController:  NewsController()
            )
            tabBarController.viewControllers = [newsController, profileController]
            tabBarController.selectedIndex = 1
            UIApplication.shared.delegate?.window??.rootViewController = tabBarController
        } else {
            loginCustomView.changeHeaderView(isCorrect: isCorrect)
        }
    }
    
    func signUp() {
  //    signUpCustomView.delegate = self
        view = signUpCustomView
    }
    
}

extension LoginController: SignUpDelegate {
    func goToLoginView() {
        loginCustomView.resetHeaderView()
        view = loginCustomView
    }
    
    func addNewPerson(login: String, password: String) {
        dictionary.updateValue(password, forKey: login)
        print(dictionary)
        view = loginCustomView
    }
}

