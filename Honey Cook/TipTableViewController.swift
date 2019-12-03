//
//  TipTableViewController.swift
//  Honey Cook
//
//  Created by std_1210_10 on 2018. 6. 10..
//  Copyright © 2018년 Se-Eun Oh. All rights reserved.
//

import UIKit

class TipTableViewController: UITableViewController {
    
    var knife: [String] = ["고추송송썰기","양파채썰기","수박예쁘게썰기","파프리카채썰기","감자깍둑썰기"]
    var handle: [String] = ["달걀삶기","스테이크굽기","아보카도즐기기",]
    static let knifeIden = "knife"
    static let handleIden = "handle"
    var foodName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "재료 칼질하기"
        }
        else {
            return "재료 손질하기"
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return knife.count
        }
        else {
            return handle.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: TipTableViewController.knifeIden, for: indexPath)
            cell.textLabel?.text = knife[indexPath.row]
            
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: TipTableViewController.handleIden, for: indexPath)
            cell.textLabel?.text = handle[indexPath.row]
            return cell
        }
        
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

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let indexPath = tableView.indexPath(for: sender as! UITableViewCell)!
        let listVC = segue.destination as! TipListViewController
        var foodName = knife[indexPath.row]
        
        if indexPath.section == 0 {
           foodName = knife[indexPath.row]
        }
        else if indexPath.section == 1 {
            foodName = handle[indexPath.row]
        }
        listVC.navigationItem.title = foodName
    }


}
