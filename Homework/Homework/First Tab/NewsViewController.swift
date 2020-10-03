//
//  NewsViewController.swift
//  Homework
//
//  Created by Robert Mukhtarov on 02.10.2020.
//  Copyright © 2020 Robert Mukhtarov. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {
    @IBAction func seeMoreButtonTapped(_ sender: UIButton) {
        let detailedNewsNavigationController: UINavigationController = storyboard!.instantiateViewController(identifier: "DetailedNewsNavigationController")
        detailedNewsNavigationController.modalPresentationStyle = .fullScreen
        present(detailedNewsNavigationController, animated: true)
    }
}
