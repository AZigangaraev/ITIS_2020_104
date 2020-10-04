//
//  NewsViewController.swift
//  ItisHomework4
//
//  Created by Рустем on 01.10.2020.
//  Copyright © 2020 Rustem. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.title = "Новости недели"
        tabBarController?.navigationItem.rightBarButtonItem = nil
    }
    

}
