//
//
//  HomeWork2
//
//  Created by Montypass on 20.09.2020.
//  Copyright © 2020 Montypass. All rights reserved.
//

import UIKit
protocol RegistrationViewDelegate: AnyObject {
    func registration(login: String, password: String)
    func hideRegistrationView()
}

class RegistrationView: UIView {
    
    weak var delegate: RegistrationViewDelegate?
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var alreadyLabel: UILabel!
    @IBOutlet weak var confirmTextField: UITextField!
    
    @IBAction func signUpButton(_ sender: Any) {
        
        if passwordTextField.text == confirmTextField.text {
            delegate?.registration(login: loginTextField.text!, password: passwordTextField.text!)
            delegate?.hideRegistrationView()
            
        } else {
            print("Something went wrong...")
        }
    }
    @IBAction func signInButton(_ sender: Any) {
        
        delegate?.hideRegistrationView()
                
    }
    
}
