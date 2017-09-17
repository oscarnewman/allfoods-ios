//
//  RestaurantsTableViewController.swift
//  allFoods
//
//  Created by Oscar Newman on 9/16/17.
//  Copyright © 2017 Oscar Newman. All rights reserved.
//

import UIKit

class RestaurantsTableViewController: UITableViewController {


    
    var items: [MenuItem] = [
        MenuItem(name: "Greek Salad", restaurant: "Bajas", price: "$6", location: "0.2", image: UIImage(named: "greek")!),
        MenuItem(name: "Hummus Plate", restaurant: "Blue Room", price: "$4", location: "1.2", image: UIImage(named: "med")!),
        MenuItem(name: "Chicken Sandwich", restaurant: "Jo's", price: "$5", location: "0.9", image: UIImage(named: "fast food")!),
        MenuItem(name: "Tandori Chicken", restaurant: "The Ratty", price: "$1.99", location: "4.5", image: UIImage(named: "indian")!)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell") as! MenuItemTableViewCell
        
        cell.updateWith(menuItem: items[indexPath.row])
        cell.setNeedsLayout()
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard(name: "ItemDetailTableViewController", bundle: nil).instantiateInitialViewController()!
        parent?.show(vc, sender: items[indexPath.row])
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
