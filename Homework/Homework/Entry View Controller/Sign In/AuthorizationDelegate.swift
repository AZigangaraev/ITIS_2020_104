//
//  AuthorizationDelegate.swift
//  Homework
//
//  Created by Robert Mukhtarov on 19.09.2020.
//  Copyright © 2020 Robert Mukhtarov. All rights reserved.
//

import UIKit

protocol AuthorizationDelegate: AnyObject {
    func switchToSignUp()
    func isUserDataCorrect(login: String, password: String) -> Bool
    func signIn(with username: String)
}
