//
//  GitHubNewsViewController.swift
//  Navigation Homework
//
//  Created by Никита Ляпустин on 01.10.2020.
//  Copyright © 2020 Pasandep. All rights reserved.
//

import UIKit

class GitHubNewsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goBackButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
