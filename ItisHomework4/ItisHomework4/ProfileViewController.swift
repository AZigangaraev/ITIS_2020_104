//
//  ProfileViewController.swift
//  ItisHomework4
//
//  Created by Рустем on 28.09.2020.
//  Copyright © 2020 Rustem. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
     @IBOutlet weak var name: UILabel!
    
    var name2:String = ""
        
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = "Привет,\(name2)"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.title = "Профиль"
        tabBarController?.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Выйти", style: .plain, target: self, action: #selector(exit))
    }
    
    @objc func exit(){
        tabBarController?.navigationController?.popViewController(animated: true)
    }

}
