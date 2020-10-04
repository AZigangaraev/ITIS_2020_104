//
//  PostView.swift
//  NikitaSosyuk
//
//  Created by Nikita Sosyuk on 01.10.2020.
//  Copyright © 2020 Nikita Sosyuk. All rights reserved.
//

import UIKit

class PostView: UIView {
    
    @IBOutlet private var newsImage: UIImageView!
    @IBOutlet private var textHeaderLabel: UILabel!
    @IBOutlet private var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        newsImage.image = #imageLiteral(resourceName: "NewsImage")
        newsImage.contentMode = .scaleAspectFit
        newsImage.layer.cornerRadius = 15
        newsImage.clipsToBounds = true
        newsImage.layer.masksToBounds = true
        
        timeLabel.text = "2.10 18:00"
        timeLabel.font = UIFont.boldSystemFont(ofSize: 10.0)
        timeLabel.textColor = .systemGray2
        
        textHeaderLabel.numberOfLines = 3
        textHeaderLabel.text = "Макрон потребовал у России объяснений из-за отравления Навального"
        textHeaderLabel.textColor = .systemRed
        textHeaderLabel.font = UIFont.boldSystemFont(ofSize: 20.0)
        
        self.backgroundColor = .systemGray6
        self.layer.cornerRadius = 20
    }

}
