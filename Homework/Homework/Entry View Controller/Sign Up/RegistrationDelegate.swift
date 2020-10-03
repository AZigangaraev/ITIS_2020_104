//
//  RegistrationDelegate.swift
//  Homework
//
//  Created by Robert Mukhtarov on 19.09.2020.
//  Copyright © 2020 Robert Mukhtarov. All rights reserved.
//

import UIKit

protocol RegistrationDelegate: AnyObject {
    func switchToSignIn()
    func addNewUser(login: String, password: String)
    func doesUserExist(login: String) -> Bool
}
