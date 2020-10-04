// 
//  ProfileController.swift
//  Homework4
//
//  Created by Олег Романов on 03.10.2020.
//

import UIKit

class ProfileController: UIViewController {
    // MARK: - Properties

    lazy var customView: ProfileView? = view as? ProfileView

    // MARK: - Init

    init(name: String) {
        super.init(
            nibName: "ProfileView",
            bundle: Bundle(for: ProfileView.self)
        )
        setupAppearance(name: name)
        addActionHandlers()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupAppearance(name: String) {
        title = "Профиль"
        tabBarItem.image = UIImage(named: "TabIconProfile")
        customView?.displayProfile(name: name)
    }

    // MARK: - Action handlers

    private func addActionHandlers() {
        customView?.logoutButton.addTarget(
            self, action: #selector(logoutClicked), for: .touchUpInside
        )
    }
    
    @objc private func logoutClicked() {
        let nextController = LoginController()
        UIApplication.shared.delegate?.window??.rootViewController = nextController
    }
}
