

import UIKit

protocol LoginViewDelegate: AnyObject {
    func validate(login: String, password: String)
    func hideLoginView()
}

class LoginViewClass: UIView {
    
    @IBOutlet var titleLable: UILabel!
    @IBOutlet var nameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    
    @IBOutlet var signUpAction: UIAction!
    @IBOutlet var logInAction: UIAction!
    
    weak var delegateLogin: LoginViewDelegate?
    
    @IBAction func logInAction(_ sender: Any) {
        delegateLogin?.validate(login: nameField.text!, password: passwordField.text!)
    }
    
    @IBAction func signUpAction(_ sender: Any) {
        delegateLogin?.hideLoginView()
    }
}
