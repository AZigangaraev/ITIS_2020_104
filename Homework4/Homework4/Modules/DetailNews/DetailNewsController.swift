// 
//  DetailNewsController.swift
//  Homework4
//
//  Created by Олег Романов on 03.10.2020.
//

import UIKit

public class DetailNewsController: UIViewController {
    // MARK: - Properties

    lazy var customView: DetailNewsView? = view as? DetailNewsView

    // MARK: - Init

    public init() {
        super.init(
            nibName: "DetailNewsView",
            bundle: Bundle(for: DetailNewsView.self)
        )
        setupAppearance()
        addActionHandlers()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupAppearance() {
        title = "Детальный экран новостей"
    }

    // MARK: - Action handlers

    private func addActionHandlers() {
        customView?.closeButton.addTarget(
            self, action: #selector(closeClicked), for: .touchUpInside
        )
    }
    
    @objc func closeClicked() {
        dismiss(animated: true, completion: nil)
    }
}
