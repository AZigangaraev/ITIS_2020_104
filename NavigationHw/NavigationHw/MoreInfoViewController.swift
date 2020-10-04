//
//  MoreInfoViewController.swift
//  NavigationHw
//
//  Created by Булат Хабибуллин on 01.10.2020.
//  Copyright © 2020 Bulat Khabibullin. All rights reserved.
//

import UIKit

class MoreInfoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func closeTap(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
