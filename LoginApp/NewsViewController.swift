//
//  NewsViewController.swift
//  LoginApp
//
//  Created by Albert Ahmadiev on 04.10.2020.
//  Copyright © 2020 Amir Zigangaraev. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {
    
    
    @IBAction func readMoreTap(_ sender: Any) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let newsViewController:    DetailNewsViewController = mainStoryboard.instantiateViewController(identifier: "DetailNews")
                 present(newsViewController, animated: true, completion: nil)
    }
    
}
