//
//  FavoriteTableViewController.swift
//  Honey Cook
//
//  Created by std_1210_10 on 2018. 6. 8..
//  Copyright © 2018년 Se-Eun Oh. All rights reserved.
//

import UIKit

class FavoriteTableViewController: UITableViewController {
    
    static let Identifier = "favorite"
    var showfavorites: [String] = []
    //let tempList = ["apple","banana","cherry"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabbar = tabBarController as! BaseTabBarController
        showfavorites = tabbar.favorites
                
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
        
        let tabbar = tabBarController as! BaseTabBarController
        showfavorites = tabbar.favorites
        print(showfavorites)
    }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //let tabbar = tabBarController as! BaseTabBarController
        
        return showfavorites.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       /* let tabbar = tabBarController as! BaseTabBarController
        showfavorites = tabbar.favorites
        var cell = tableView.dequeueReusableCell(withIdentifier: FavoriteTableViewController.Identifier)
        cell?.textLabel?.text = showfavorites[indexPath.row]*/
        
        var cell = tableView.dequeueReusableCell(withIdentifier: FavoriteTableViewController.Identifier)
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: FavoriteTableViewController.Identifier)
        }
        cell?.textLabel?.text = showfavorites[indexPath.row]
        cell?.textLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = tableView.indexPath(for: sender as! UITableViewCell)!
        let listVC = segue.destination as! FavoriteListViewController
        let foodName = showfavorites[indexPath.row]
        listVC.navigationItem.title = foodName
        
        
    }
    

}
