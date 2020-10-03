//
//  EntryViewController.swift
//  Homework
//
//  Created by Robert Mukhtarov on 19.09.2020.
//  Copyright © 2020 Robert Mukhtarov. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController, AuthorizationDelegate, RegistrationDelegate {
    var signInView: SignInView!
    var signUpView: SignUpView!
    
    var users = ["админ": "123456", "Вася": "йцукен"]

    override func viewDidLoad() {
        super.viewDidLoad()
        if let signInView = UINib.loadFirstObject(from: "SignIn") as? SignInView {
            view.addSubview(signInView)
            signInView.center = view.center
            signInView.delegate = self
            self.signInView = signInView
        }
        if let signUpView = UINib.loadFirstObject(from: "SignUp") as? SignUpView {
            view.addSubview(signUpView)
            signUpView.center = view.center
            signUpView.delegate = self
            signUpView.isHidden = true
            self.signUpView = signUpView
        }
    }
    
    func signIn(with username: String) {
        let tabBarController: UITabBarController = storyboard!.instantiateViewController(identifier: "TabBarController")
        let secondTabController = tabBarController.viewControllers![1] as! UINavigationController
        let profileViewController = secondTabController.viewControllers.first! as! ProfileViewController
        profileViewController.name = username
        tabBarController.modalPresentationStyle = .fullScreen
        tabBarController.modalTransitionStyle = .flipHorizontal
        present(tabBarController, animated: true) {
            self.signInView.reset()
        }
    }
    
    func switchToSignIn() {
        signUpView.isHidden = true
        signInView.isHidden = false
    }
    
    func switchToSignUp() {
        signInView.isHidden = true
        signUpView.isHidden = false
    }
    
    func isUserDataCorrect(login: String, password: String) -> Bool {
        guard let correctPassword = users[login] else { return false }
        return password == correctPassword
    }
    
    func addNewUser(login: String, password: String) {
        users[login] = password
    }
    
    func doesUserExist(login: String) -> Bool {
        users[login] != nil
    }
}

// MARK: - Extensions

extension UINib {
    static func loadFirstObject(from nibName: String) -> Any? {
        return UINib(nibName: nibName, bundle: nil).instantiate(withOwner: nil, options: nil).first
    }
}
