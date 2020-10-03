//
//  ProfileViewController.swift
//  Homework3
//
//  Created by Svetlana Safonova on 30.09.2020.
//  Copyright © 2020 Svetlana Safonova. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    struct Input {
        let inputString: () -> String
    }
    
    var input: Input?
    
    @IBOutlet weak var lable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let users = Users()
        lable.text = "Привет, \(users.defaults.object(forKey: "name") as! String)"
            
       
    }
    
   
    @IBAction func logout(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
}
