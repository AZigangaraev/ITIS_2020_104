import UIKit
protocol GetNameDelegate:AnyObject {
    func sendName(username:String)
}
class ViewController: UIViewController {
    @IBOutlet var usernameTextField: UITextField!
    weak var delegate:GetNameDelegate?
    
    var name: String = ""
    @IBAction func signInButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "Tabbar")
        vc?.modalPresentationStyle = .fullScreen
        
        guard
            let username = usernameTextField.text
        else {
            print("Error")
            return
        }
        if !username.isEmpty {
            delegate?.sendName(username: username)
            present(vc!, animated: true, completion: nil)
        }
        name = username
    }
}
