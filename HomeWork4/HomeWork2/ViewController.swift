//
//  ViewController.swift
//  HomeWork2
//
//  Created by Montypass on 20.09.2020.
//  Copyright © 2020 Montypass. All rights reserved.
//

import UIKit

class ViewController: UIViewController, LoginDelegate, RegistrationViewDelegate {
    
    var dictionary: [String: String] = ["emil": "kamaliev", "user": "123"]
    @IBOutlet weak var registrationView: UIView!
    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var statusView: UIView!
    @IBOutlet weak var statusLabel: UILabel!
    
    func validate(login: String, password: String) {
        if login == "" || password == ""{
            statusLabel.text = "Need to sign in to continue"        
            statusView.backgroundColor = .lightGray
        } else {
            if dictionary[login] == password{
                statusLabel.text = "Sign in successful"
                statusView.backgroundColor = .green
            } else {
                statusLabel.text = "Sign in failed"
                statusView.backgroundColor = .red
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let view = registrationView as! RegistrationView
        view.delegate = self
        let view2 = loginView as! LoginView
        view2.delegate = self
        
        
    }
    func hideLoginView() {
            loginView.isHidden = true
            registrationView.isHidden = false
        }
    func hideRegistrationView() {
        registrationView.isHidden = true
        loginView.isHidden = false
    }
    
    @IBOutlet weak var passwordTextFromRegistration: UITextField!
    @IBOutlet weak var passwordTextFromLogin: UITextField!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let barViewControllers = segue.destination as! UITabBarController
        let navViewControllers = barViewControllers.viewControllers![1] as! UINavigationController
        let destinationViewController = navViewControllers.topViewController as! ProfileViewController
        destinationViewController.textFromLabel = loginTextField.text!
        
    }
    
    @IBAction func toTabBarButton(_ sender: Any) {
        if passwordTextFromLogin.text == "" && passwordTextFromRegistration.text == "" {
            statusLabel.text = "Text fields are empty"
            statusView.backgroundColor = .red
        } else if passwordTextFromLogin.text == passwordTextFromRegistration.text {
            performSegue(withIdentifier: "goVC", sender: nil)
        }
    }
    
    func registration(login: String, password: String) {
        dictionary[login] = password
    }


}

