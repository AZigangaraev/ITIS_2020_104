//
//  NewsViewController.swift
//  HomeWork2
//
//  Created by Nail on 28.09.2020.
//  Copyright © 2020 Nail. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func goToNextScreen(_ sender: Any) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "DetailedNewsScreenViewController")
        self.present(newVC!, animated: true, completion: nil)
        
    }
    
   

}
