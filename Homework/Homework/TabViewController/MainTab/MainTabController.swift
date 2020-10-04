//
//  MainTabController.swift
//  Homework
//
//  Created by Joseph on 01.10.2020.
//

import UIKit

protocol MainMenuContollerDelegate: UIViewController {
    func showModal()
    func showAlertWithDistructiveButton(title: String, message: String)
}

class MainTabController: UIViewController, MainMenuContollerDelegate {
    var delegate: UITabBarControllerDelegate?

    var mainView: MainViewMain?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.mainView = MainViewMain(delegate: self)
        setUpViews()
    }

    override func viewWillAppear(_ animated: Bool) {
        delegate?.navigationItem.setRightBarButtonItems(nil, animated: true)
        delegate?.title = "News of the Week"
    }

    func setUpViews() {
        if let stackedView = self.mainView {
            self.view.addSubview(stackedView)

            NSLayoutConstraint.activate([
                stackedView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                stackedView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            ])
        }
    }

    func showModal() {
        self.present(DetailViewController(), animated: true, completion: nil)
    }

    func showAlertWithDistructiveButton(title: String, message: String) {

    }
}
