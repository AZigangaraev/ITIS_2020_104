
import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var viewMoreButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewMoreButton.layer.cornerRadius = 20
        textView.layer.cornerRadius = 25
        

    }
    

    
    @IBAction func detailedNewsScreenAction(){
        let controller = storyboard?.instantiateViewController(identifier: "detail") as! DetailNewsViewController
            self.present(controller, animated: true, completion: nil)
    }
    
}
