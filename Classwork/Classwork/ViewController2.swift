//
//  ViewController2.swift
//  Classwork
//
//  Created by Amir Zigangaraev on 28.09.2020.
//

import UIKit

class ViewController2: UIViewController {
    struct Input {
        let inputString: () -> String
        let goBack: () -> Void
    }
    
    var input: Input?
    
    @IBOutlet private var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = input?.inputString()
    }
    
    @IBAction private func goBackTap() {
        input?.goBack()
    }
}
