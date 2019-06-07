//
//  CinemasViewCell.swift
//  Сinemaddict
//
//  Created by Michael Tseitlin on 6/5/19.
//  Copyright © 2019 Michael Tseitlin. All rights reserved.
//

import UIKit

class CinemasViewCell: UITableViewCell {
    
    @IBOutlet var miniImage: UIImageView!
    @IBOutlet var nameAndYearLabel: UILabel!
    @IBOutlet var worldFeesLabel: UILabel!
    @IBOutlet var budgetLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    
    func configureCell(cinema: Cinema, with indexPath: IndexPath) {
        
        miniImage.image = UIImage(named: cinema.image)
        nameAndYearLabel.text = "\(indexPath.row + 1). " + cinema.name + " (\(cinema.year))"
        worldFeesLabel.text = "Мировые сборы: \(cinema.worldFees)"
        budgetLabel.text = "Бюджет фильма: \(cinema.budget)"
        countryLabel.text = "Страна: \(cinema.country)"
        durationLabel.text = "Продолжительность: \(cinema.duration)"
    }
}
