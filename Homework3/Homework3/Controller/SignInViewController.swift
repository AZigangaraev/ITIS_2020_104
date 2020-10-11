//
//  SignInViewController.swift
//  Homework3
//
//  Created by Ruslan Khanov on 28.09.2020.
//  Copyright © 2020 Ruslan Khanov. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    var userName = ""
    
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
    
    @IBOutlet var signInButton: UIButton! {
        didSet {
            signInButton.layer.cornerRadius = 10.0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - User interaction
    @IBAction func signIn() {
        guard userNameTextField.text != "", passwordTextField.text != "" else {
            showError(message: "Try to input something")
            emptyFields()
            return
        }
        let login = userNameTextField.text!
        let password = passwordTextField.text!
        
        if UsersData.isUserExist(login: login, password: password) {
            userName = login
            performSegue(withIdentifier: "showMain", sender: nil)
            emptyFields()
        } else {
            showError(message: "Incorrect login or password")
            emptyFields()
        }
    }
    
    func emptyFields() {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    func showError(message: String) {
        let alertController = UIAlertController(title: "Error", message: message, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                present(alertController, animated: true, completion: nil)
    }
    
    //MARK: - Configure seque
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showMain" {
            let tabBarController = segue.destination as! UITabBarController
            let destinationController = tabBarController.viewControllers![0] as! ProfileViewController
            destinationController.userName = userName
        }
    }
}
