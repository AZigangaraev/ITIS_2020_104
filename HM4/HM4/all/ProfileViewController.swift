

import UIKit

class ProfileViewController: UIViewController {

    var name = ""
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Hello bro. Ur name is , \(name)? "
    }
    
    @IBAction func exitAction(_ sender: Any){
        dismiss(animated: true, completion: nil)
    }
    
}
