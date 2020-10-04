// 
//  NewsController.swift
//  Homework4
//
//  Created by Олег Романов on 03.10.2020.
//

import UIKit

public class NewsController: UIViewController {
    // MARK: - Properties

    lazy var customView: NewsView? = view as? NewsView

    // MARK: - Init

    public init() {
        super.init(
            nibName: "NewsView",
            bundle: Bundle(for: NewsView.self)
        )
        setupAppearance()
        addActionHandlers()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupAppearance() {
        navigationItem.title = "Новости недели"
        tabBarItem.title = "Главная"
        tabBarItem.image = UIImage(named: "TabIconNews")
        definesPresentationContext = true
    }

    // MARK: - Action handlers

    private func addActionHandlers() {
        customView?.detailNewsButton.addTarget(
            self, action: #selector(detailNewsClicked), for: .touchUpInside
        )
    }
    
    @objc func detailNewsClicked() {
        let nextController = DetailNewsController()
        nextController.modalPresentationStyle = .currentContext
        present(nextController, animated: true)
    }
}
