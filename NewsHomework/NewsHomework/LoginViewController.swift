//
//  LoginViewController.swift
//  NewsHomework
//
//  Created by Саркис Катвалян on 05/10/2020.
//  Copyright © 2020 Саркис Катвалян. All rights reserved.
//

import UIKit

protocol LoginDelegate: AnyObject {
    func sendUsername(username: String)
}

class LoginViewController: UIViewController {
    
    weak var delegate: LoginDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.placeholder = "Введите ваше имя..."
        loginButton.setTitle("Войти", for: .normal) 
        loginButton.setTitleColor(.black, for: .normal)
    }
    
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var textField: UITextField!
    
    @IBAction func buttonTapped(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "TabBar")
        vc?.modalPresentationStyle = .fullScreen
        
        guard let name = textField.text
              else {
                print("Error")
                return
        }
        
        if !name.isEmpty {
            delegate?.sendUsername(username: name)
            present(vc!, animated: true, completion: nil)
        }
    }
}
