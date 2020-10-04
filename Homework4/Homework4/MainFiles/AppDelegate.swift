//
//  AppDelegate.swift
//  Homework4
//
//  Created by Олег Романов on 03.10.2020.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    lazy var window: UIWindow? = UIWindow()

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window?.rootViewController = LoginController()
        window?.makeKeyAndVisible()
        return true
    }
}
