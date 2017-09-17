//
//  MenuItemTableViewCell.swift
//  allFoods
//
//  Created by Oscar Newman on 9/16/17.
//  Copyright © 2017 Oscar Newman. All rights reserved.
//

import UIKit


class MenuItemTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var restaurantLabel: UILabel!
    @IBOutlet var distanceLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    
    @IBOutlet var foodImageView: UIImageView!
    
    public var gradient: CAGradientLayer!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupGradient()
        
       
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        updateGradient()
    }
    
    func setupGradient() {
        gradient = CAGradientLayer()
        gradient.frame = foodImageView.frame
        gradient.colors = [UIColor.clear.cgColor, UIColor(red:0.80, green:0.68, blue:0.13, alpha:0.68).cgColor]
        gradient.locations = [0.0, 1]
        foodImageView.layer.insertSublayer(gradient, at: 0)
    }
    
    func updateGradient() {
        gradient.frame = self.bounds
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateWith(menuItem: MenuItem) {
        nameLabel.text = menuItem.name
        restaurantLabel.text = menuItem.restaurant
        distanceLabel.text = "\(menuItem.location) mi"
        priceLabel.text = menuItem.price
        
        foodImageView.image = menuItem.image
//        setupGradient()
        
       
    }

}
