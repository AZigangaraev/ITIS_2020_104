//
//  
//  HomeWork2
//
//  Created by Montypass on 20.09.2020.
//  Copyright © 2020 Montypass. All rights reserved.
//

import UIKit

protocol LoginDelegate: AnyObject {
    func validate(login: String, password: String)
    func hideLoginView()
}

class LoginView: UIView {

    weak var delegate: LoginDelegate?
    @IBOutlet weak var loginInButton: UIButton!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var noAccLabel: UILabel!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
   
    
    @IBAction func loginInButton(_ sender: Any) {
        delegate?.validate(login: loginTextField.text!, password: passwordTextField.text!)
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        delegate?.hideLoginView()
    }
    
}
