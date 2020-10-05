
import UIKit

protocol RegistrViewDelegate: AnyObject {
    func registr(login: String, password: String)
    func hideRegistrView()
}

class RegistrationViewClass: UIView {
    
    @IBOutlet var titleLable: UILabel!
    @IBOutlet var nameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    @IBOutlet var passwordConfirmField: UITextField!
    @IBOutlet var signInButton: UIButton!
    
    weak var delegateRegistr: RegistrViewDelegate?
    
    @IBAction func registrAction(_ sender: Any) {
        if(passwordField.text == passwordConfirmField.text){
            delegateRegistr?.registr(login: nameField.text!, password: passwordField.text!)
            delegateRegistr?.hideRegistrView()
        } else {
            print("Check ur password , maaaaan. Focus!!!")
        }
    }
    
    @IBAction func signInAction(_ sender: Any) {
        delegateRegistr?.hideRegistrView()
    }
}
