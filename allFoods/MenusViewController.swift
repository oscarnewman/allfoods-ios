//
//  MenusViewController.swift
//  allFoods
//
//  Created by Oscar Newman on 9/16/17.
//  Copyright © 2017 Oscar Newman. All rights reserved.
//

import UIKit
import PagingMenuController

private struct PagingMenuOptions: PagingMenuControllerCustomizable {
    
    var vc1 = UIStoryboard(name: "MenuListTableView", bundle: nil).instantiateInitialViewController()! as! RestaurantsTableViewController
    var vc2 = UIStoryboard(name: "MenuListTableView", bundle: nil).instantiateInitialViewController()! as! RestaurantsTableViewController
    var vc3 = UIStoryboard(name: "MenuListTableView", bundle: nil).instantiateInitialViewController()! as! RestaurantsTableViewController
    
    var componentType: ComponentType {
        return .all(menuOptions: MenuOptions(), pagingControllers: pagingControllers)
    }
    
    var pagingControllers: [UIViewController] {
        vc1.items = MockData.restaurant
        vc2.items = MockData.deliver
        vc3.items = MockData.recipes
        return [vc1, vc2, vc3]
    }
    
    struct MenuOptions: MenuViewCustomizable {
        var displayMode: MenuDisplayMode {
            return .segmentedControl
        }
        
        var focusMode: MenuFocusMode {
            return .underline(
                height: 3,
                color: Stylesheet.brandColor,
                horizontalPadding: 0,
                verticalPadding: 0)
        }
        
        var itemsOptions: [MenuItemViewCustomizable] {
            return [MenuItem1(), MenuItem2(), MenuItem3()]
        }
        
        var height: CGFloat {
            return 40
        }
        
    }
    
    struct MenuItem1: MenuItemViewCustomizable {
        var displayMode: MenuItemDisplayMode {
            return .text(title: MenuItemText(text: "RESTAURANTS",
                                             font: Stylesheet.menuFont,
                                             selectedFont: Stylesheet.menuFont))
        }
    }
    
    struct MenuItem2: MenuItemViewCustomizable {
        var displayMode: MenuItemDisplayMode {
            return .text(title: MenuItemText(text: "DELIVERY",
                                             font: Stylesheet.menuFont,
                                             selectedFont: Stylesheet.menuFont))
        }
        
        
    }
    
    struct MenuItem3: MenuItemViewCustomizable {
        var displayMode: MenuItemDisplayMode {
            return .text(title: MenuItemText(text: "RECIPES",
                                             font: Stylesheet.menuFont,
                                             selectedFont: Stylesheet.menuFont))
        }
        
        
    }

}

class MenusViewController: UIViewController {
    
    var pushCallback: (MenuItem) -> () = {_ in}
    
    var selectedItem: MenuItem?
    
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.backBarButtonItem = nil
        title = "Nearby"
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        navigationItem.setHidesBackButton(true, animated: false)
    
       
  
        
        // Customize page menu to your liking (optional) or use default settings by sending nil for 'options' in the init
        // Example:
//        let font = UIFont(name: "MuseoSansRounded-300" , size: 14.0)!
        
        let pagingMenuController = self.childViewControllers.first as! PagingMenuController
        let options = PagingMenuOptions()
        pagingMenuController.setup(options)
        
        
        
//        if let view = UINib(nibName: "ProgressHeader", bundle: nil).instantiate(withOwner: self, options: nil)[0] as? UIView  {
//            view.frame.origin.y = 40 + 15
//            self.view.addSubview(view)
//            
//        }
        


        // Do any additional setup after loading the view.
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
//        guard let detailView = segue.destination as! ItemDetailTableViewController  else {}
//        guard let item = sender as! MenuItem else {}
        
//        detailView.item = item
        
    }
    

}
