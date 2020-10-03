//
//  users.swift
//  Homework3
//
//  Created by Svetlana Safonova on 28.09.2020.
//  Copyright © 2020 Svetlana Safonova. All rights reserved.
//

import Foundation

class Users{
    let defaults = UserDefaults.standard
    var user: String = ""
    
    func add(username: String){
        print(username)
        defaults.set(username, forKey: "name")
        
        print(defaults.object(forKey: "name") as! String)
    }
   
}
