//
//  ProfileViewController.swift
//  NikitaSosyuk
//
//  Created by Nikita Sosyuk on 30.09.2020.
//  Copyright © 2020 Nikita Sosyuk. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet private var helloLabel: UILabel!
    
    private var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Профиль"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Выйти", style: .done, target: self, action: #selector(goToLogin))
        
        helloLabel.textAlignment = .center
        if let controller = presentingViewController as? LogInViewController {
            helloLabel.text = "Привет, \(controller.name)"
        }
    }
    
    @objc private func goToLogin() {
        dismiss(animated: true, completion: nil)
        
        if let controller = presentingViewController as? LogInViewController {
            controller.cleanSingIn()
        }
    }
    
}
