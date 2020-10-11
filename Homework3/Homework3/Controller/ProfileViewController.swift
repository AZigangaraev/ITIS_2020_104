//
//  ProfileViewController.swift
//  Homework3
//
//  Created by Ruslan Khanov on 28.09.2020.
//  Copyright © 2020 Ruslan Khanov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    var userName = ""
    
    @IBOutlet var userNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if !userName.isEmpty {
            userNameLabel.text = "Hello, \(userName)!"
        }
    }
    
    @IBAction func close(segue: UIStoryboardSegue) {
        dismiss(animated: true, completion: {
            self.view.window!.rootViewController?.dismiss(animated: false, completion: nil)
        })
    }
    
}
