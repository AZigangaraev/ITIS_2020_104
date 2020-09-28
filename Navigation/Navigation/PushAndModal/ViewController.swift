//
//  ViewController.swift
//  Navigation
//
//  Created by Amir Zigangarayev on 28.09.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var inputTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - UIStoryboardSegue presentation

    enum SegueIdentifier: String {
        case modal = "ModalPresentation"
        case push = "PushPresentation"
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            let segueIdentifierRaw = segue.identifier,
            let segueIdentifier = SegueIdentifier(rawValue: segueIdentifierRaw)
        else { return }

        switch segueIdentifier {
            case .modal:
                guard
                    let navigationController = segue.destination as? UINavigationController,
                    let controller = navigationController.topViewController as? ModalViewController
                else { return }

                controller.inputText = inputTextField.text
            case .push:
                guard let controller = segue.destination as? PushedViewController else { return }

                controller.inputText = inputTextField.text
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("viewWillAppear")
    }

    // MARK: - Programmatical presentation

    private let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)

    @IBAction private func presentTap() {
        let modalController: ModalViewController = mainStoryboard.instantiateViewController(identifier: "ModalViewController")
        modalController.inputText = inputTextField.text
        let navigationController = UINavigationController(rootViewController: modalController)
        navigationController.modalPresentationStyle = .fullScreen
        present(navigationController, animated: true, completion: nil)
//        showDetailViewController(navigationController, sender: nil)
//        show(navigationController, sender: nil)
    }

    @IBAction private func pushTap() {
        let pushedController: PushedViewController = mainStoryboard.instantiateViewController(identifier: "PushedViewController")
        pushedController.inputText = inputTextField.text
        navigationController?.pushViewController(pushedController, animated: true)
//        showDetailViewController(pushedController, sender: nil)
//        show(pushedController, sender: nil)
    }
}

