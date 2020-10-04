//
//  SignInUIView.swift
//  HomeworkSecondNikitaSosyuk
//
//  Created by Nikita Sosyuk on 19.09.2020.
//  Copyright © 2020 Amir Zigangaraev. All rights reserved.
//

import UIKit

protocol SignInDelegate: AnyObject {
    func changeToSignUp()
    func validateData(username: String?, password: String?)
}

class SignInView: UIView {
    
    @IBOutlet private var usernameTextField: UITextField!
    @IBOutlet private var passwordTextField: UITextField!
    @IBOutlet private var statusView: StatusView!
    @IBOutlet private var haveNoAccountLabel: UILabel!
    @IBOutlet private var signInButton: UIButton!
    @IBOutlet private var signUpButton: UIButton!
    
    weak var delegate: SignInDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        statusView.awakeFromNib()
        usernameTextField.placeholder = "Username"
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        signInButton.setTitle("Sign In", for: .normal)
        haveNoAccountLabel.text = "Have no account?"
        signUpButton.setTitle("Sign Up", for: .normal)
    }
    
    func loadAfterSingUp() {
        statusView.awakeFromNib()
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func signInButtonAction() {
        delegate?.validateData(username: usernameTextField.text,
                               password: passwordTextField.text)
    }
    
    @IBAction func changeSignUp() {
        delegate?.changeToSignUp()
    }
    
    func succesful() {
        statusView.signInSuccessful()
    }
    
    func failed() {
        statusView.signInFailed()
    }
}
