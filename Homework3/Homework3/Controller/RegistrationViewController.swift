//
//  RegistrationViewController.swift
//  Homework3
//
//  Created by Ruslan Khanov on 29.09.2020.
//  Copyright © 2020 Ruslan Khanov. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField! {
        didSet {
            userNameTextField.layer.cornerRadius = 5.0
        }
    }
    @IBOutlet var passwordTextField: UITextField! {
        didSet {
            passwordTextField.layer.cornerRadius = 5.0
            passwordTextField.isSecureTextEntry = true
        }
    }
    @IBOutlet var confirmPasswordTextField: UITextField! {
        didSet {
            confirmPasswordTextField.layer.cornerRadius = 5.0
            confirmPasswordTextField.isSecureTextEntry = true
        }
    }
    @IBOutlet var signUpButton: UIButton! {
        didSet {
            signUpButton.layer.cornerRadius = 10.0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUp() {
        guard userNameTextField.text != "", passwordTextField.text != "", confirmPasswordTextField.text != "" else {
            showError(message: "Try to input something")
            emptyFields()
            return
        }
        guard passwordTextField.text == confirmPasswordTextField.text else {
            showError(message: "Passwords don't match")
            emptyFields()
            return
        }
        let login = userNameTextField.text!
        let password = passwordTextField.text!
        
        guard !UsersData.isUserAlreadyExist(login: login) else {
            showError(message: "User with the login already exist")
            emptyFields()
            return
        }
        
        UsersData.addUser(login: login, password: password)
        self.dismiss(animated: true, completion: nil)
    }
    
    func emptyFields() {
        userNameTextField.text = ""
        passwordTextField.text = ""
        confirmPasswordTextField.text = ""
    }
    
    func showError(message: String) {
        let alertController = UIAlertController(title: "Error", message: message, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                present(alertController, animated: true, completion: nil)
    }
}

