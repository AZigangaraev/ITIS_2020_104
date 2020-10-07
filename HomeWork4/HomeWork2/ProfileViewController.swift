//
//  ProfileViewController.swift
//  HomeWork2
//
//  Created by Montypass on 30.09.2020.
//  Copyright © 2020 Montypass. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    var textFromLabel: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Привет,\(textFromLabel)!"
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBAction func exitBarButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    

}
