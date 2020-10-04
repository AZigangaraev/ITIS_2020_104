//
//  ProfileViewController.swift
//  NavigationAndTabBarProject
//
//  Created by Rishat on 01.10.2020.
//  Copyright © 2020 Rishat Latypov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    var name = ""
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Hi, \(name)"
    }
    
    @IBAction func exitAction(_ sender: Any){
        dismiss(animated: true, completion: nil)
    }
    
}
