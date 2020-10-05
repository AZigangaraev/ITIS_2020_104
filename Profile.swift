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
        loginController?.delegate = self
        logoutButton.setTitle("Выйти", for: .normal)
        logoutButton.setTitleColor(.black, for: .normal)
        }
    
    @IBOutlet var profileLabel: UILabel!
    @IBOutlet var logoutButton: UIButton!
    
    @IBAction func logoutButtonClicked(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        }
}
    
extension Profile: LoginDelegate {
        func sendUsername(username: String) {
        profileLabel.text = "Привет, \(username)!"
            
        }
}
