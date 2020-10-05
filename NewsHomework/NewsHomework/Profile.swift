//
//  Profile.swift
//  NewsHomework
//
//  Created by Саркис Катвалян on 05/10/2020.
//  Copyright © 2020 Саркис Катвалян. All rights reserved.
//

import UIKit

class Profile: UIViewController {
    
    let loginController: LoginViewController? = LoginViewController()
    
    override func viewDidLoad() {
        logoutButton.setTitle("Выйти", for: .normal)
        logoutButton.setTitleColor(.black, for: .normal)
        }
    
    @IBOutlet var profileLabel: UILabel!
    @IBOutlet var logoutButton: UIButton!
    
    @IBAction func logoutButtonClicked(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
        if let controller = presentationController as? LoginViewController {
            profileLabel.text = "Привет,\(controller.textField)"
        }
        }
}
