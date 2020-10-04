//
//  SignUpView.swift
//  NavigationHw
//
//  Created by Булат Хабибуллин on 28.09.2020.
//  Copyright © 2020 Bulat Khabibullin. All rights reserved.
//

import UIKit

protocol SignUpViewDelegate: AnyObject {
    func registration(login: String, password: String)
    func switchSignUpView()
}

class SignUpView: UIView {
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passTextField: UITextField!
    @IBOutlet var confPassTextField: UITextField!
    
    weak var delegate: SignUpViewDelegate?
    
    @IBAction func signUpAction(_ sender: Any) {
        if passTextField.text == confPassTextField.text {
            delegate?.registration(login: loginTextField.text!, password: passTextField.text!)
            delegate?.switchSignUpView()
        } else {
            print("Confirm your password!")
        }
    }
    
    @IBAction func showSignInView(_ sender: Any) {
        delegate?.switchSignUpView()
    }
}
