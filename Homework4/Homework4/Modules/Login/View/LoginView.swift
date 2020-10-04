//
//  LoginView.swift
//  Homework4
//
//  Created by Олег Романов on 03.10.2020.
//

import UIKit

protocol LoginViewDelegate: AnyObject {
    func loginButtonClicked(name : String)
}

class LoginView: UIView {
    // MARK: - Properties
    weak var delegate: LoginViewDelegate?

    @IBOutlet var loginButton: UIButton!
    @IBOutlet var nameTextField: UITextField!

    // MARK: - Xib init
    override func awakeFromNib() {
        super.awakeFromNib()
        setupStyle()
    }
    
    private func setupStyle() {
        loginButton.backgroundColor = .blue
        loginButton.layer.cornerRadius = 12
    }

    // MARK: - Action handlers
    @IBAction func loginButtonClicked(_ sender: Any) {
        guard
            let name = nameTextField.text
        else {
            print("Error...")
            return
        }
        if !name.isEmpty {
            delegate?.loginButtonClicked(name: name)
        }
    }
}

