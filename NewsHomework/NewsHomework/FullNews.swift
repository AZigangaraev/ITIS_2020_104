//
//  FullNews.swift
//  NewsHomework
//
//  Created by Саркис Катвалян on 05/10/2020.
//  Copyright © 2020 Саркис Катвалян. All rights reserved.
//

import UIKit

class FullNews: UIViewController {
    
    override func viewDidLoad() {
        closeButton.setTitle("Выйти", for: .normal)
        closeButton.setTitleColor(.black, for: .normal)
        
        fullNewsLabel.text = "По словам главы российской дипломатии, Москва не в курсе, действительно ли специалисты из Франции и Швеции сами брали анализы у пациента."
        secondFullNewsLabel.text = "Навальный почувствовал себя плохо, когда летел из Томска в Москву 20 августа. Самолет экстренно сел в Омске, больного доставили в больницу скорой медицинской помощи № 1, а позднее транспортировали в клинику «Шарите» в Берлине."
    }
    
    @IBOutlet var fullNewsLabel: UILabel!
    @IBOutlet var closeButton: UIButton!
    
    @IBOutlet var secondFullNewsLabel: UILabel!
    @IBAction func closeButtonClicked(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
