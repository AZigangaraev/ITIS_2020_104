//
//  GetNameView.swift
//  homee
//
//  Created by Эвелина on 03.10.2020.
//  Copyright © 2020 Эвелина. All rights reserved.
//

import UIKit
class AvialableName: UIViewController {


@IBOutlet weak var helloLabel: UILabel!
    
override func viewDidLoad() {
    super.viewDidLoad()
    if let vc = presentingViewController as? ViewController,
        let name = vc.username {
        helloLabel?.text = "Привет, \(name)"
    }
}
@IBAction func logButtonTap(_ sender: Any) {
    dismiss(animated: true, completion: nil)
}
}
