//
//  TableViewController.swift
//  Passing Data Between Controllers
//
//  Created by Icaro Barreira Lavrador on 8/11/15.
//  Copyright © 2015 Swift Next Step. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let currentCell = tableView.cellForRowAtIndexPath(indexPath)! as UITableViewCell
        performSegueWithIdentifier("detailsSegue", sender: currentCell)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "detailsSegue")
        {
            let detailVC = segue.destinationViewController as! ViewController
            if let currentCell = sender as? UITableViewCell{
                
                print("Passing data:\(currentCell.textLabel!.text)")
                detailVC.cell = currentCell.textLabel!.text!
                detailVC.sub = (currentCell.detailTextLabel?.text)!
            }
        }
    }

}
