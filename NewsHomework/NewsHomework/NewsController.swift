//
//  NewsController.swift
//  NewsHomework
//
//  Created by Саркис Катвалян on 05/10/2020.
//  Copyright © 2020 Саркис Катвалян. All rights reserved.
//

import UIKit

class NewsController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newsButton.setTitle("Далее", for: .normal)
        newsButton.setTitleColor(.black, for: .normal)
        
        newsLabel.text = "Лавров заявил, что врачи «Шарите» не нашли яда в организме Навального."
        secondNewsLabel.text = "Врачи в берлинской клинике «Шарите» признались, что не обнаружили в анализах блогера Алексея Навального никаких боевых отравляющих веществ. Об этом 5 октября заявил глава МИД России Сергей Лавров в ходе встречи с представителями Ассоциации европейского бизнеса в России (АЕБ)."
    }
    
    @IBOutlet var newsButton: UIButton!
    @IBOutlet var secondNewsLabel: UILabel!
    @IBOutlet var newsLabel: UILabel!
    @IBAction func buttonClicked(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(identifier: "Full")
        vc?.modalPresentationStyle = .fullScreen
        present(vc!, animated: true, completion: nil)
    }
}
