//
//  DataMock.swift
//  allFoods
//
//  Created by Oscar Newman on 9/17/17.
//  Copyright © 2017 Oscar Newman. All rights reserved.
//

import UIKit

struct MockData {
    
    static let restaurant = [
         MenuItem(name: "Chicken Kabob Pocket",
                  restaurant: "East Side Pockets",
                  price: "$6",
                  location: "0.2",
                  image: UIImage(named: "kabob")!),
         
         MenuItem(name: "Oven Roasted Chicken Sandwich",
                  restaurant: "Subway",
                  price: "$9",
                  location: "0.4",
                  image: UIImage(named: "chickens")!),
         
         MenuItem(name: "Black Forest Ham Sandwich",
                  restaurant: "Subway",
                  price: "$7",
                  location: "0.4",
                  image: UIImage(named: "ham")!),
         
         MenuItem(name: "Roast Beef Sandwich",
                  restaurant: "Subway",
                  price: "$10",
                  location: "0.4",
                  image: UIImage(named: "roast")!),
         
         MenuItem(name: "Buffalo Chicken Sandwich",
                  restaurant: "Harry's Bar & Burger",
                  price: "$6.49",
                  location: "1.2",
                  image: UIImage(named: "buffalo")!),
         
         MenuItem(name: "Grek D'lite-er",
                  restaurant: "Pizza Pie-er",
                  price: "$7",
                  location: "1.3",
                  image: UIImage(named: "dlite")!),
         
         MenuItem(name: "Poached Passion",
                  restaurant: "Louis Family Restaurant",
                  price: "$7.25",
                  location: "1.8",
                  image: UIImage(named: "passion")!),
         
         MenuItem(name: "Veggie Omlette",
                  restaurant: "Louis Family Restaurant",
                  price: "$9",
                  location: "1.8",
                  image: UIImage(named: "kabob")!)
    ]
    
    static let deliver = [
       
        
        MenuItem(name: "Oven Roasted Chicken Sandwich",
                 restaurant: "Subway",
                 price: "$9",
                 location: "0.4",
                 image: UIImage(named: "chickens")!),
        
        MenuItem(name: "Black Forest Ham Sandwich",
                 restaurant: "Subway",
                 price: "$7",
                 location: "0.4",
                 image: UIImage(named: "ham")!),
        
        MenuItem(name: "Roast Beef Sandwich",
                 restaurant: "Subway",
                 price: "$10",
                 location: "0.4",
                 image: UIImage(named: "roast")!),
        
        MenuItem(name: "Grek D'lite-er",
                 restaurant: "Pizza Pie-er",
                 price: "$7",
                 location: "1.3",
                 image: UIImage(named: "dlite")!),
        
        MenuItem(name: "Poached Passion",
                 restaurant: "Louis Family Restaurant",
                 price: "$7.25",
                 location: "1.8",
                 image: UIImage(named: "passion")!),
        
        MenuItem(name: "Veggie Omlette",
                 restaurant: "Louis Family Restaurant",
                 price: "$9",
                 location: "1.8",
                 image: UIImage(named: "kabob")!)
    ]
    
    static let recipes = [
        MenuItem(name: "Arroz con Pollo",
                 restaurant: "Homemade",
                 price: "$3.60",
                 location: "0",
                 image: UIImage(named: "kabob")!),
        
        MenuItem(name: "Chicken Enchilada",
                 restaurant: "Homemade",
                 price: "$2.25",
                 location: "0",
                 image: UIImage(named: "chickens")!),
        
        MenuItem(name: "Turkey Lettuce Wrap",
                 restaurant: "Homemade",
                 price: "$3.60",
                 location: "0",
                 image: UIImage(named: "ham")!),
        
        MenuItem(name: "Chicken Enchiladas",
                 restaurant: "Homemade",
                 price: "$2.25",
                 location: "0",
                 image: UIImage(named: "roast")!),
        
        MenuItem(name: "Sweet and Sour Pork",
                 restaurant: "Homemade",
                 price: "$3.165",
                 location: "0",
                 image: UIImage(named: "buffalo")!),
        
        MenuItem(name: "Mini Shepherd's Pie",
                 restaurant: "Homemade",
                 price: "$2.90",
                 location: "0",
                 image: UIImage(named: "dlite")!),
        
        MenuItem(name: "Baked Spinach Macaroni",
                 restaurant: "Homemade",
                 price: "$4.40",
                 location: "0",
                 image: UIImage(named: "passion")!)
        
            ]
    
}
