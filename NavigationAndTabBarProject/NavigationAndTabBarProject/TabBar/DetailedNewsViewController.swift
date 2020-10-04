//
//  DetailNewsViewController.swift
//  NavigationAndTabBarProject
//
//  Created by Rishat on 01.10.2020.
//  Copyright © 2020 Rishat Latypov. All rights reserved.
//

import UIKit

class DetailedNewsViewController: UIViewController {
    
    
    @IBOutlet weak var moreTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moreTextView.layer.cornerRadius = 30
    }

    @IBAction func goBackTap(_ sender: Any){
        dismiss(animated: true, completion: nil)
    }
    
}
