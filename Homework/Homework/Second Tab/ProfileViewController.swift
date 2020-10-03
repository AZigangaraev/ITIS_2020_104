//
//  ProfileViewController.swift
//  Homework
//
//  Created by Robert Mukhtarov on 02.10.2020.
//  Copyright © 2020 Robert Mukhtarov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    var name: String?
    @IBOutlet var greetingMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingMessage.text = "Привет, \(name ?? "неизвестный пользователь")"
    }
    
    @IBAction func exitButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
