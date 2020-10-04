//
//  FirstTabController.swift
//  Navigation
//
//  Created by Amir Zigangarayev on 28.09.2020.
//

import UIKit

class FirstTabController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(cameraTap))
        navigationItem.title = "First View Controller"
        tabBarItem.title = "First Tab"
    }
    
    @objc private func cameraTap() {
        dismiss(animated: true, completion: nil)
    }
}
