//
//  TabBarController.swift
//  ItisHomework4
//
//  Created by Рустем on 04.10.2020.
//  Copyright © 2020 Rustem. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    
    var name:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewControllers?.forEach({ (vc) in
            if let v = vc as? ProfileViewController{
                v.name2 = name
            }
        })

        self.navigationItem.setHidesBackButton(true, animated:true)
        
       
    }
    
    
}
