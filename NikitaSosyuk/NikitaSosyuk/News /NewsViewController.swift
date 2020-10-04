//
//  NewsView.swift
//  NikitaSosyuk
//
//  Created by Nikita Sosyuk on 29.09.2020.
//  Copyright © 2020 Nikita Sosyuk. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {

    @IBOutlet private var newsImage: UIImageView!
    @IBOutlet private var newsLabel: UILabel!
    @IBOutlet private var newsHeaderLabel: UILabel!
    @IBOutlet private var backButton: UIButton!
    @IBOutlet private var headerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newsHeaderLabel.numberOfLines = 3
        newsHeaderLabel.text = "Макрон потребовал у России объяснений из-за отравления Навального"
        newsHeaderLabel.textColor = .systemRed
        newsHeaderLabel.font = UIFont.boldSystemFont(ofSize: 25.0)
        
        headerLabel.text = "Новость"
        headerLabel.textColor = .systemRed
        headerLabel.font = UIFont.boldSystemFont(ofSize: 25.0)
        headerLabel.textAlignment = .center

        newsLabel.numberOfLines = 10
        newsLabel.text = "Президент Франции Эмманюэль Макрон заявил, что факт отравления российского оппозиционера Алексея Навального запрещенным химическим веществом не вызывает сомнений, и Россия обязана предоставить объяснения. Об этом политик сообщил во время пресс-конференция в Вильнюсе, передает Reuters."
        
        newsImage.image = #imageLiteral(resourceName: "NewsImage")
        newsImage.contentMode = .scaleAspectFit
        newsImage.layer.cornerRadius = 15
        newsImage.clipsToBounds = true
        newsImage.layer.masksToBounds = true
        
        backButton.setTitle("Закрыть", for: .normal)
    }
    
    @IBAction func backButtonAction() {
        dismiss(animated: true, completion: nil)
    }
}
