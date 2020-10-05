//
//  SignUpViewController.swift
//  Task1
//
//  Created by Эвелина on 05.10.2020.
//  Copyright © 2020 Эвелина. All rights reserved.
//

import UIKit
protocol RegistrationDelegate: AnyObject {
    func available2(username: String, password: String, confirmPassword: String)
}

class SignUpViewController: UIView {
    
    @IBAction func signInButtonTap(_sender:Any){
        delegate?.available2(username: usernameTextField.text ?? "", password: passwordTextField.text ?? "", confirmPassword: passwordConfirmTextField.text ?? "")       }
     @IBAction func signUpButtonTap(_ sender: Any) {
        delegate?.available2(username: usernameTextField.text ?? "", password: passwordTextField.text ?? "", confirmPassword: passwordConfirmTextField.text ?? "")       }
}
