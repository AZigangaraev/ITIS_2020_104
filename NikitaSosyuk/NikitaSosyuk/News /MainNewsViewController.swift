//
//  MainNewsViewController.swift
//  NikitaSosyuk
//
//  Created by Nikita Sosyuk on 01.10.2020.
//  Copyright © 2020 Nikita Sosyuk. All rights reserved.
//

import UIKit

class MainNewsViewController: UIViewController {

    @IBOutlet private var postView: PostView!
    @IBOutlet private var moreButton: UIButton!
    
    private let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moreButton.setTitle("Смотреть дальше", for: .normal)
        navigationItem.title = "Новости Недели"
    }
    
    @IBAction func moreButtonAction() {
        let newsViewController: NewsViewController = mainStoryboard.instantiateViewController(identifier: "NewsViewController")
        present(newsViewController, animated: true, completion: nil)
    }

}
