//
//  ViewController.swift
//  Classwork
//
//  Created by Amir Zigangaraev on 28.09.2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction private func buttonTap() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller: ViewController2 = storyboard.instantiateViewController(identifier: "ViewController2")
        
        controller.input = ViewController2.Input(
            inputString: {
                "String \(Int.random(in: 1...10))"
            },
            goBack: {
                self.navigationController?.popViewController(animated: true)
            }
        )
        show(controller, sender: nil)
    }
}

