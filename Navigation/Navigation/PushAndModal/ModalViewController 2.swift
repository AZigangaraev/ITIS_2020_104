//
//  ModalViewController.swift
//  Navigation
//
//  Created by Amir Zigangarayev on 28.09.2020.
//

import UIKit

class ModalViewController: UIViewController {
    var inputText: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel.text = inputText
    }

    @IBOutlet private var textLabel: UILabel!
    @IBAction private func closeTap(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
}
