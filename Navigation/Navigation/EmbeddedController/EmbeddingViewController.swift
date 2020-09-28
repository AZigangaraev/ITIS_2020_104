//
//  EmbeddingViewController.swift
//  Navigation
//
//  Created by Amir Zigangarayev on 28.09.2020.
//

import UIKit

class EmbeddingViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let embeddedController: EmbeddedViewController = UIStoryboard(name: "Main", bundle: nil).instantiateWithSameNameIdentifier()
        addChild(embeddedController)
        view.addSubview(embeddedController.view)
        embeddedController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            embeddedController.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            embeddedController.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            embeddedController.view.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            embeddedController.view.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
        embeddedController.didMove(toParent: self)
    }
}
