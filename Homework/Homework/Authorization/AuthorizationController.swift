//
//  ViewController.swift
//  Homework
//
//  Created by Joseph on 28.09.2020.
//

import UIKit

protocol AuthorizationControllerDelegate: UIViewController {
    func goToFirstTab(name: String)
    func showAlertWithDistructiveButton(title: String, message: String)
}

class AuthorizationController: UIViewController, AuthorizationControllerDelegate {
    var mainView: AuthorizationVIew?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainView = AuthorizationVIew(delegate: self)

        self.view.backgroundColor = UIColor.systemGray

        if let _ = self.mainView {
            self.view.addSubview(self.mainView!)
            self.setUpConstraints(subView: mainView!)
        }
    }

    func setUpConstraints(subView: UIView) {
        NSLayoutConstraint.activate([
            subView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            subView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            //            subView.topAnchor.constraint(equalTo: self.view.topAnchor),
            //            subView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            //            subView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            //            subView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
        ])
    }

    func showAlertWithDistructiveButton(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Close", style: .default))

        self.present(alert, animated: true, completion: nil)
    }

    func goToFirstTab(name: String) {
        let tabController = TabViewController()
        tabController.name = name
        
        navigationController?.pushViewController(tabController, animated: true)
    }
}
