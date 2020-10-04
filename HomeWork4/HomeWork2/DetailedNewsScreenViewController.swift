//
//  DetailedNewsScreenViewController.swift
//  HomeWork2
//
//  Created by Nail on 28.09.2020.
//  Copyright © 2020 Nail. All rights reserved.
//

import UIKit

class DetailedNewsScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goBackButton(_ sender: Any) {
       // let vc = storyboard?.instantiateViewController(withIdentifier: "NewsNavidation")
        //self.present(vc!, animated: false, completion: nil)
        dismiss(animated: true, completion: nil)
    }
    
    

}
