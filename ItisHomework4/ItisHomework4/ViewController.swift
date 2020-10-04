
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var but: UIButton!
    @IBOutlet weak var error: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _ = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(colorButton), userInfo: nil, repeats: true)
        
        print("hide")
        self.navigationController?.navigationItem.hidesBackButton = true
    }
    
    @objc func colorButton(){
        if name.text == ""{
            but.tintColor = .red
        } else {
            but.tintColor = .blue
        }
    }
    
    
    
    @IBAction func go(_ sender: Any) {
        if(name.text == ""){
            error.text = "Укажите имя!"
        } else {
            error.text = ""
        performSegue(withIdentifier: "goProfile", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goProfile") {
            let destination = segue.destination as? TabBarController
            destination?.name = name.text!
        }
    }
}

