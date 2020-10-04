//
//  ViewController.swift
//  Navigation Homework
//
//  Created by Никита Ляпустин on 28.09.2020.
//  Copyright © 2020 Pasandep. All rights reserved.
//

import UIKit



class ViewController: UIViewController, SignInViewDelegate, SignUpViewDelegate {
    
    @IBOutlet var statusLabel: UILabel!
    @IBOutlet var statusView: UIView!
    var username: String?
    var loginAndPasswordDB: [String : String] = ["pasandep" : "123"]

    
    func validate(login: String, password: String) {
        if (login == "" || password == ""){
            statusLabel.text = "Need to sign in to continue"
            statusLabel.font = .systemFont(ofSize: 20)
            statusView.backgroundColor = .lightGray
        } else {
            if (loginAndPasswordDB[login] == password){
                statusLabel.text = "Sign in successful"
                statusLabel.font = .systemFont(ofSize: 32)
                statusView.backgroundColor = .green
                
                username = login
                showTabBarViewController()
            } else {
                statusLabel.text = "Wrong login/password"
                statusLabel.font = .systemFont(ofSize: 25)
                statusView.backgroundColor = .red
            }
        }
    }
    
    private func showTabBarViewController() {
        let storyboard: UIStoryboard = UIStoryboard(name: "Login", bundle: nil)
        let vc: UIViewController = storyboard.instantiateViewController(withIdentifier: "TabBarController") as UIViewController
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    func changeSingInToSingUp() {
        signInView.isHidden = true
        signUpView.isHidden = false
    }
    
    func saveData(login: String, password: String) {
        loginAndPasswordDB[login] = password
    }
    
    func changeSignUpToSignIn() {
        signInView.isHidden = false
        signUpView.isHidden = true
    }

    @IBOutlet var signInView: SignInView!
    @IBOutlet var signUpView: SignUpView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signInView.delegate = self
        signUpView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        prepareSignInView()
        prepareSignUpView()
    }
    
    private func prepareSignInView(){
        signInView.loginTextField.text = ""
        signInView.passwordTextField.text = ""
        signInView.layer.borderWidth = 3
        signInView.layer.borderColor = UIColor.lightGray.cgColor
        signInView.layer.cornerRadius = 20
    }
    
    private func prepareSignUpView(){
        signUpView.layer.borderWidth = 3
        signUpView.layer.borderColor = UIColor.lightGray.cgColor
        signUpView.layer.cornerRadius = 20
        signUpView.isHidden = true
    }
}
