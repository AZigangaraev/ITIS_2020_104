// 
//  ProfileView.swift
//  Homework4
//
//  Created by Олег Романов on 03.10.2020.
//

import UIKit

final class ProfileView: UIView {
    // MARK: - Properties

    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet weak var logoutButton: UIButton!
    // MARK: - Xib Init

    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }

    // MARK: - Private methods

    private func commonInit() {
        setupStyle()
    }

    private func setupStyle() {
        logoutButton.backgroundColor = .red
        logoutButton.layer.cornerRadius = 12
    }

    // MARK: - Internal methods

    func displayProfile(name: String?) {
        if let name = name {
            nameLabel.text = "Привет, \(name)"
        } else {
            nameLabel.text = "???"
        }
    }
}
