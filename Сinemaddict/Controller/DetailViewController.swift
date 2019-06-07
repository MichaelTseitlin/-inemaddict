//
//  DetailViewController.swift
//  Сinemaddict
//
//  Created by Michael Tseitlin on 6/5/19.
//  Copyright © 2019 Michael Tseitlin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var cinema: Cinema!
    
    @IBOutlet var backgroundImage: UIImageView!
    
    @IBOutlet var cinemaStackView: UIStackView!
    
    @IBOutlet var poster: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var directorLabel: UILabel!
    @IBOutlet var yearLabel: UILabel!
    @IBOutlet var worldFeesLabel: UILabel!
    @IBOutlet var genreLabel: UILabel!
    @IBOutlet var starringLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var budgetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blurImage()
        updateUI(size: view.bounds.size)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        updateUI(size: size)
    }
    
    private func updateUI(size: CGSize) {
        let isVertical = size.width < size.height
        cinemaStackView.axis = isVertical ? .vertical : .horizontal
        
        title = cinema.name
        
        backgroundImage.image = UIImage(named: cinema.backgroundImage)
        
        poster.image = UIImage(named: cinema.image)
        nameLabel.text = cinema.name
        countryLabel.text = cinema.country
        directorLabel.text = cinema.director
        yearLabel.text = String(cinema.year)
        worldFeesLabel.text = cinema.worldFees
        genreLabel.text = cinema.genre.joined(separator: ", ")
        starringLabel.text = cinema.starring.joined(separator: ", ")
        durationLabel.text = cinema.duration
        descriptionLabel.text = cinema.description
        budgetLabel.text = cinema.budget
    }
    
    private func blurImage() {
        
        let blurEffect = UIBlurEffect(style: .light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = backgroundImage.bounds
        
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        backgroundImage.addSubview(blurEffectView)
    }
}


