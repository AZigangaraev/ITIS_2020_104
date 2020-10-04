//
//  NewsViewController.swift
//  Navigation Homework
//
//  Created by Никита Ляпустин on 01.10.2020.
//  Copyright © 2020 Pasandep. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {

    @IBOutlet var gitHubNewsView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gitHubNewsView.layer.cornerRadius = 15
    }

    @IBAction func moreInfoButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "News", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "GitHubNewsViewController") as! GitHubNewsViewController
        
        self.present(vc, animated: true, completion: nil)
    }
    
}
