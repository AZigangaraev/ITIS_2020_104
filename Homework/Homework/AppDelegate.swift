//
//  AppDelegate.swift
//  Homework
//
//  Created by Joseph on 28.09.2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        let rootVC = AuthorizationController()
        let rootNC = UINavigationController(rootViewController: rootVC)
        window!.rootViewController = rootNC
        window!.makeKeyAndVisible()

        return true
    }
}
