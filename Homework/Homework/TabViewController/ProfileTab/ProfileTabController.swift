//
//  ProfileTabController.swift
//  Homework
//
//  Created by Joseph on 01.10.2020.
//

import UIKit

class ProfileTabController: UIViewController {
    var delegate: UITabBarControllerDelegate?
    var buttonItems: [UIBarButtonItem]?

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadView()

        view.backgroundColor = UIColor.white

        label.text = "Hello, \(delegate!.name ?? "")"

        self.viewWillAppear(true)
    }

    override func viewWillAppear(_ animated: Bool) {
        delegate?.navigationItem.setRightBarButtonItems(buttonItems, animated: true)
        delegate?.title = "Profile"

        self.buttonItems = [UIBarButtonItem(title: "Log Out", style: .plain, target: self, action: #selector(goBack))]
    }

    @objc func goBack() {
        delegate?.navigationController?.popViewController(animated: true)
    }

}
