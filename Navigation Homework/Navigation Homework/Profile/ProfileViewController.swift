//
//  ProfileViewController.swift
//  Navigation Homework
//
//  Created by Никита Ляпустин on 01.10.2020.
//  Copyright © 2020 Pasandep. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet var helloLabel: UILabel?
    
    public var name: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let vc = presentingViewController as? ViewController, let name = vc.username {
            helloLabel?.text = "Hello, \(name)"
        }
    }
    
    @IBAction func logoutButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
