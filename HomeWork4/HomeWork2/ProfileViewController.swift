//
//  ProfileViewController.swift
//  HomeWork2
//
//  Created by Nail on 30.09.2020.
//  Copyright © 2020 Nail. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    var textFromLabel:String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Hello,\(textFromLabel)"
        
       
    }
    @IBOutlet weak var nameLabel: UILabel!
    @IBAction func exitBarButton(_ sender: Any) {
        //let rootVc = storyboard?.instantiateViewController(withIdentifier: "ViewController")
        //self.present(rootVc!, animated: true, completion: nil)
        dismiss(animated: true, completion: nil)
    }
    

    

}
