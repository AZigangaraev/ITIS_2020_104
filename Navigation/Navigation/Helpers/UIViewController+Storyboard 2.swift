//
//  UIViewController+Storyboard.swift
//  Navigation
//
//  Created by Amir Zigangarayev on 28.09.2020.
//

import UIKit

extension UIStoryboard {
    func instantiateWithSameNameIdentifier<T: UIViewController>() -> T {
        let identifier = String(describing: T.self)
        return instantiateViewController(identifier: identifier)
    }
}
