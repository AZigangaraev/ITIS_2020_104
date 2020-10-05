//
//  ProfilVIewController.swift
//  Task1
//
//  Created by Эвелина on 05.10.2020.
//  Copyright © 2020 Эвелина. All rights reserved.
//

import UIKit

class ProfilVIewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var textFromLabel:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
              
        if let controller = presentingViewController as? ViewController {
            nameLabel.text = "Привет,\(controller.name)"
        }
    }
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)    }
}

extension ProfilVIewController: GetNameDelegate {
    func sendName(username: String) {
        textFromLabel = username
    }
}




