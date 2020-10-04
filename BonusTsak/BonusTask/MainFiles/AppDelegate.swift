//
//  AppDelegate.swift
//  BonusTsak
//
//  Created by Олег Романов on 04.10.2020.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow? = UIWindow()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window?.rootViewController = LoginController()
        window?.makeKeyAndVisible()
        return true
    }
}

