

import UIKit

class DetailNewsViewController: UIViewController {
    
    @IBOutlet weak var fulltext: UITextView!
    override func viewDidLoad() {
           super.viewDidLoad()
           fulltext.layer.cornerRadius = 25
       }
    
  
    @IBAction  private func goback(_ sender: Any) {
     dismiss(animated: true, completion: nil)}
    
}
