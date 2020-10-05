//
//  NewsViewController.swift
//  News
//
//  Created by Albert Ahmadiev on 05.10.2020.
//

import UIKit

class NewsViewController: UIViewController {
    
    
    @IBAction func readMoreTap(_ sender: Any) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let newsViewController:    DetailNewsViewController = mainStoryboard.instantiateViewController(identifier: "DetailNews")
        present(newsViewController, animated: true, completion: nil)
    }
    
}

