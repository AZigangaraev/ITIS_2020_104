//
//  SignInViewController.swift
//  NavigationHw
//
//  Created by Булат Хабибуллин on 28.09.2020.
//  Copyright © 2020 Bulat Khabibullin. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, SignInViewDelegate, SignUpViewDelegate {    
    
    @IBOutlet var statusView: UIView!
    @IBOutlet var statusLabel: UILabel!
    @IBOutlet weak var signUpView: SignUpView!
    @IBOutlet weak var signInView: SignInView!
    
    
 
    func switchSignInView() {
        signInView.isHidden = true
        signUpView.isHidden = false
    }
       
    func switchSignUpView() {
        signUpView.isHidden = true
        signInView.isHidden = false
    }
    
    
    func validate(login: String, password: String) {
        if login == "" && password == "" {
            statusView.backgroundColor = .gray
            statusLabel.text = "Need to sign in to continue"
        } else {
            if dictionary[login] == password {
                statusView.backgroundColor = .green
                statusLabel.text = "Sign in succeseful"
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let controller = storyboard.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
                let secondTabController = controller.viewControllers![1] as! UINavigationController
                let profileTabController = secondTabController.viewControllers.first! as! ProfileTabController
                profileTabController.login = login
                controller.modalPresentationStyle = .fullScreen
                self.present(controller, animated: true)
            } else {
                if password != dictionary[login] {
                    statusView.backgroundColor = .red
                    statusLabel.text = "Sign in failed"
                }
            }
        }
    }

    
    
    func registration(login: String, password: String) {
        dictionary[login] = password
    }
    
    
    
    
    var dictionary: [String: String] = ["admin": "qwerty"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signUpView.delegate = self
        signInView.delegate = self
    }

}
