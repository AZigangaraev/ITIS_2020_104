//
//  ViewController.swift
//  HomeworkSecondNikitaSosyuk
//
//  Created by Nikita Sosyuk on 19.09.2020.
//  Copyright © 2020 Amir Zigangaraev. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController, SignInDelegate, SignUpDelegate {
    
    @IBOutlet private var signInView: SignInView!
    @IBOutlet private var signUpView: SignUpView!
    
    private let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
    
    private var dictionary: [String: String] = ["admin": "qwerty", "Nikita": "Sosyuk"]
    
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpView.isHidden = true
        signInView.delegate = self
        signUpView.delegate = self
    }

    func changeToSignUp() {
        signInView.isHidden = true
        signUpView.isHidden = false
    }
    
    func validateData(username: String?, password: String?) {
        if let u = username, let p = password {
            if (dictionary[u] == p) {
                name = username!
                signInView.succesful()
                moveToNextView(username)
            } else {
                signInView.failed()
            }
        } else {
            signInView.failed()
        }
    }
    
    func changToSignIn() {
        signInView.isHidden = false
        signUpView.isHidden = true
        signInView.loadAfterSingUp()
    }
    
    func addData(username: String, password: String) {
        dictionary[username] = password
    }
    
    func moveToNextView(_ username: String?) {
        let tapBarController: TapBarController = mainStoryboard.instantiateViewController(identifier: "TapBarController")
        tapBarController.modalPresentationStyle = .fullScreen
        tapBarController.name = username
        present(tapBarController, animated: true, completion: nil)
    }
    
    func cleanSingIn() {
        signInView.loadAfterSingUp()
    }
}
