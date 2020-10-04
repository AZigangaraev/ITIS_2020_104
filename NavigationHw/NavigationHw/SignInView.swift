//
//  SignInView.swift
//  NavigationHw
//
//  Created by Булат Хабибуллин on 28.09.2020.
//  Copyright © 2020 Bulat Khabibullin. All rights reserved.
//

import UIKit

protocol SignInViewDelegate: AnyObject {
    func validate(login: String, password: String)
    func switchSignInView()
}

class SignInView: UIView {
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passTextField: UITextField!
    @IBOutlet var showSignUpAction: UIAction!
    @IBOutlet var signInAction: UIAction!
    @IBOutlet var signInButton: UIButton!
    
    weak var delegate: SignInViewDelegate?
    
    @IBAction func signInAction(_ sender: Any) {
        delegate?.validate(login: loginTextField.text!, password: passTextField.text!)
    }
    
    
    @IBAction func showSignUpView(_ sender: Any) {
        delegate?.switchSignInView()
    }
}
