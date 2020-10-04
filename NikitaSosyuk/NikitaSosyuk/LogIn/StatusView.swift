//
//  StatusView.swift
//  HomeworkSosyuk
//
//  Created by Nikita Sosyuk on 17.09.2020.
//  Copyright © 2020 Amir Zigangaraev. All rights reserved.
//

import UIKit

class StatusView: UIView {
    
    @IBOutlet private var statusLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        statusLabel.text = "Need to sign in to continue."
        statusLabel.textColor = .black
        statusLabel.font = UIFont.systemFont(ofSize: 23.0)
        self.backgroundColor = .systemGray6
        self.layer.cornerRadius = 10
    }
    
    func signInSuccessful() {
        statusLabel.text = "Sing in successful!"
        statusLabel.textColor = .white
        self.backgroundColor = .systemGreen
    }
    
    func signInFailed() {
        statusLabel.text = "Sign in failed."
        statusLabel.textColor = .white
        self.backgroundColor = .systemRed
    }
}
