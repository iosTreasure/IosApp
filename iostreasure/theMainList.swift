//
//  theMainList.swift
//  iostreasure
//
//  Created by Андрей Илалов on 27.06.17.
//  Copyright © 2017 Андрей Илалов. All rights reserved.
//

import UIKit

class theMainList: UITableViewController {
    var tableViewData = [String]()
    var indexes = [String]()
    
    var link = [links]()
    
    
    
    private func loadSampleLinks() {
        guard let link1 = links(theLink: "http://swiftbook.ru/sites/default/files/files/Swift_Programming_Language_[swiftbook.ru].pdf", theLinkHeader: "учебник", rating: 2, author: "me" ) else {
            fatalError("Unable to instantiate meal1")
        }
        
        guard let link2 = links(theLink: "http://swiftbook.ru/doc/about-swift", theLinkHeader: "о языке", rating: 2, author: "me" ) else {
            fatalError("Unable to instantiate meal1")
        }
        link += [link1, link2]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleLinks()
//        let justNumbers = "110 120 130 450 470 480 500 700 900 1000 1100 1200 1300 1400 1500 1600 1700 1800 1900 2000 2100 "
//        
//        tableViewData = justNumbers.components(separatedBy: " ")
//        
//        let numbersForIndexes = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21"
//        indexes = numbersForIndexes.components(separatedBy: " ")
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
        // Return the number of rows in the section.
        return link.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? theListCell  else {
            fatalError("The dequeued cell is not an instance of MealTableViewCell.")
        }
        // Configure the cell...
//        cell.textLabel?.text = tableViewData[indexPath.section]
        let linkes = link[indexPath.row]
        
        cell.LinkLabel.text = linkes.theLink
        cell.authorLabel.text = linkes.author
        cell.link2.text = linkes.theLinkHeader
        return cell
    }
    
//    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
//        return indexes
//    }
    
//    override func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
//        let temp = indexes as NSArray
//        return temp.index(of: title)
//    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */
    
    @IBAction func unwindToMealList(sender: UIStoryboardSegue) {
        if let sourceController = sender.source as? addViewController  {
            //let newIndexPath = IndexPath(row: name.count, section: 0)
           let lName = sourceController.linkName.text
            let aName = sourceController.authorField.text
            let lHeader = sourceController.linkHeaderField.text
            let rankNumber = Int(sourceController.rankingField.text!)
            let newIndexPath = IndexPath(row: link.count, section: 0)
            link.append(links(theLink: lName!, theLinkHeader: lHeader!, rating: rankNumber!, author: aName!)!)
            ////print(link[1].author)
            tableView.insertRows(at: [newIndexPath], with: .automatic)

            
            
        }
    }

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
       super.prepare(for: segue, sender: sender)
        
        switch(segue.identifier ?? "") {
            
            
        case "showWeb":
            guard let webDetailViewController = segue.destination as? webViewController else {
                fatalError("Unexpected destination: \(segue.destination)")
            }
            
            guard let selectedLinkCell = sender as? theListCell else {
                fatalError("Unexpected sender: \(sender)")
            }
            
            guard let indexPath = tableView.indexPath(for: selectedLinkCell) else {
                fatalError("The selected cell is not being displayed by the table")
            }
            
            let selectedLink = link[indexPath.row]
            print(selectedLink.theLinkHeader)
           //webDetailViewController.link?.author = selectedLink.author
            webDetailViewController.link = selectedLink
            
            
        default:
            print("")
            //fatalError("Unexpected Segue Identifier; \(segue.identifier)")
        }
    }


}
