

import UIKit

class DetailedNewsViewController: UIViewController {
    
    
    @IBOutlet weak var moreTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moreTextView.layer.cornerRadius = 25
    }

    @IBAction private func goBack(_ sender: Any){
        dismiss(animated: true, completion: nil)
    }
    
}
