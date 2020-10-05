//
//  ViewController.swift
//  HM4
//
//  Created by Dima on 05.10.2020.
//  Copyright © 2020 Dima. All rights reserved.
//

import UIKit

class ViewController: UIViewController, LoginViewDelegate, RegistrViewDelegate {
    
    @IBOutlet weak var statusField: UILabel!
    @IBOutlet weak var statusView: UIView!
    
    var loginAndPasswordDictionary: [String: String] = ["Dima": "3101"]
    
    func validate(login: String, password: String) {
        if login == "" && password == ""{
            statusView.backgroundColor = .red
            statusField.text = "Push the button sign in , maaaaan"
        } else if(password == loginAndPasswordDictionary[login]){
            statusView.backgroundColor = .red
            statusField.text = "Welcome"
            statusField.textAlignment = .center

            let controller = storyboard?.instantiateViewController(identifier: "TabBar") as! TabBarController
            let secondTabController = controller.viewControllers![1] as! UINavigationController
            let profileViewController = secondTabController.viewControllers.first! as! ProfileViewController
            profileViewController.name = login
            
            controller.modalPresentationStyle = .fullScreen
            self.present(controller, animated: true, completion: nil)
            
        } else if(password != loginAndPasswordDictionary[login]){
            statusView.backgroundColor = .blue
            statusField.text = "Failed"
            
        }
    }
    
    func hideLoginView() {
       loginView.isHidden = true
       registrView.isHidden = false
    }
    
    @IBOutlet private var loginView: LoginViewClass!
    @IBOutlet private var registrView: RegistrationViewClass!
    
    @IBOutlet private var loginBut: UIButton!
    @IBOutlet private var signupBut: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginBut.layer.cornerRadius = 40
        signupBut.layer.cornerRadius = 15
        
        registrView.isHidden = true
        registrView.layer.cornerRadius = 25
        registrView.delegateRegistr = self
        
        loginView.layer.cornerRadius = 25
        loginView.delegateLogin = self
        
        statusView.layer.cornerRadius = 25
    }

    func registr(login: String, password: String) {
        loginAndPasswordDictionary[login] = password
    }
    
    func hideRegistrView(){
        registrView.isHidden = true
        loginView.isHidden = false
    }
}


