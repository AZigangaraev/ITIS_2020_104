//
//  PushedViewController.swift
//  Navigation
//
//  Created by Amir Zigangarayev on 28.09.2020.
//

import UIKit

class PushedViewController: UIViewController {
    var inputText: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel.text = inputText
    }

    @IBOutlet var textLabel: UILabel!
}
