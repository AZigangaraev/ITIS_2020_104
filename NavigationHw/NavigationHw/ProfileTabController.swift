//
//  ProfileTabController.swift
//  NavigationHw
//
//  Created by Булат Хабибуллин on 01.10.2020.
//  Copyright © 2020 Bulat Khabibullin. All rights reserved.
//

import UIKit

class ProfileTabController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet weak var signInView: SignInView!
    
    var login = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Привет, \(login)"
    }
    
    @IBAction private func exitToSignIn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
