//
//  AuthorizationVIew.swift
//  Homework
//
//  Created by Joseph on 01.10.2020.
//

import UIKit

class AuthorizationVIew: UIView {
    var label: UILabel = UILabel()
    var textField: UITextField = UITextField()
    var button: UIButton = UIButton(type: .system)

    weak var delegate: AuthorizationControllerDelegate?

    init(delegate: AuthorizationControllerDelegate) {
        super.init(frame: CGRect())
        self.delegate = delegate
        self.translatesAutoresizingMaskIntoConstraints = false

        setUpViews()
    }

    func setUpViews() {
        self.addSubview(label)
        self.addSubview(textField)
        self.addSubview(button)

        self.backgroundColor = UIColor.systemGray2

        label.text = "Please enter your Name"
        label.isOpaque = true
        label.translatesAutoresizingMaskIntoConstraints = false

        textField.placeholder = "SomeRandomName"
        textField.backgroundColor = UIColor.systemGray3
        textField.translatesAutoresizingMaskIntoConstraints = false
        
//        textField.text = "SAMPLE NAME"

        button.setTitle("Enter", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor.darkGray
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonTrigger), for: .touchUpInside)
    }

    @objc func buttonTrigger() {
        if let text = textField.text {
            if (text.count > 3) {
                delegate?.goToFirstTab(name: text)
            } else {
                delegate?.showAlertWithDistructiveButton(title: "Ivalid Name Length", message: "Name i supposed to have 4 or more characters")
            }
        } else {
            delegate?.showAlertWithDistructiveButton(title: "Empty Field", message: "Please enter your name")
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        let centerX = (self.frame.width - 200) / 2
        let centerY = self.frame.height / 2

        label.frame = CGRect(x: centerX, y: centerY / 2, width: 200, height: 50)
        //button.frame = CGRect(x: centerX, y: centerY + centerY / 2, width: 50, height: 50)

        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: superview!.centerXAnchor),

            textField.topAnchor.constraint(equalTo: label.lastBaselineAnchor, constant: label.frame.size.height),
            textField.widthAnchor.constraint(equalToConstant: label.frame.size.width),
            textField.leadingAnchor.constraint(equalTo: label.leadingAnchor),
            textField.trailingAnchor.constraint(equalTo: label.trailingAnchor),
            textField.heightAnchor.constraint(equalToConstant: 50),

            button.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 10),
            button.trailingAnchor.constraint(equalTo: textField.trailingAnchor),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: label.frame.size.height),

            self.topAnchor.constraint(equalTo: label.topAnchor, constant: -50),
            self.leadingAnchor.constraint(equalTo: label.leadingAnchor, constant: -50),
            self.trailingAnchor.constraint(equalTo: label.trailingAnchor, constant: 50),
            self.bottomAnchor.constraint(equalTo: button.bottomAnchor, constant: 50),
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
