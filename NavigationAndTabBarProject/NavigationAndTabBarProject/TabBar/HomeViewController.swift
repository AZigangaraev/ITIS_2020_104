//
//  HomeViewController.swift
//  NavigationAndTabBarProject
//
//  Created by Rishat on 01.10.2020.
//  Copyright © 2020 Rishat Latypov. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var viewMoreButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewMoreButton.layer.cornerRadius = 20
        textView.layer.cornerRadius = 30
        
        setupTitleLabel()
    }
    
    func setupTitleLabel(){
        let titleLabel = UILabel()
        titleLabel.text = "News of the week"
        titleLabel.font = UIFont.systemFont(ofSize: 25)
        titleLabel.adjustsFontSizeToFitWidth = true
        titleLabel.minimumScaleFactor = 0.75
        navigationItem.titleView = titleLabel
    }
    
    @IBAction func detailedNewsScreenAction(){
        let controller = storyboard?.instantiateViewController(identifier: "detailID") as! DetailedNewsViewController
            self.present(controller, animated: true, completion: nil)
    }
    
}
