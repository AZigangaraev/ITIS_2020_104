//
//  ViewController.swift
//  HomeWork2
//
//  Created by Nail on 20.09.2020.
//  Copyright © 2020 Nail. All rights reserved.
//

import UIKit

class ViewController: UIViewController, LoginDelegate, RegistrationViewDelegate{
    
    @IBOutlet weak var registrationView: UIView!
    @IBOutlet weak var loginView: UIView!
    
    @IBOutlet weak var loginTextField: UITextField!
    var dictionary: [String: String] = ["admin": "qwerty"]
    
    @IBOutlet weak var statusView: UIView!
    @IBOutlet weak var statusLabel: UILabel!
    
    func correct(login: String, password: String) {
        if login == "" || password == ""{
            statusLabel.text = "Need to sign in to continue"        
            statusView.backgroundColor = .lightGray
        } else {
            if dictionary[login] == password{
                statusLabel.text = "Sign in successful"
                statusView.backgroundColor = .green
            } else {
                statusLabel.text = "Wrong data"
                statusView.backgroundColor = .red
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = registrationView as! RegistrationViewClass
        view.registrationDelegate = self
        let view2 = loginView as! LoginView
        view2.delegateLogin = self
        
        
    }
    func loginViewIsHidden(){
            loginView.isHidden = true
            registrationView.isHidden = false
        }
    func registrationViewIsHidden(){
        registrationView.isHidden = true
        loginView.isHidden = false
    }
   
   // @IBAction func registrationTextF(_ sender: Any) {
   // }
    
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
            statusLabel.text = "Text fields is empty"
            statusView.backgroundColor = .red
        }else if passwordTextFromLogin.text == passwordTextFromRegistration.text{
        //let myVC = storyboard?.instantiateViewController(withIdentifier: "TabBarController")
        //self.present(myVC!, animated: false, completion: nil)
            performSegue(withIdentifier: "goVC", sender: nil)
        }
    }
    
    func registration(login: String, password: String) {
        dictionary[login] = password
    }


}

