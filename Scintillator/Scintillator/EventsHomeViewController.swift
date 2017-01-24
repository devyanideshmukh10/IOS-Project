//
//  EventsHomeViewController.swift
//  Scintillator
//
//  Created by Kala,Ankitha Jain on 11/13/16.
//  Copyright © 2016 Deshmukh,Devyani S. All rights reserved.
//
import Parse

import UIKit

class EventsHomeViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let testObject = PFObject(className: "TestObject")
        testObject["foo"] = "bar"
        testObject.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            print("Object has been saved.")
        }
        
        // Do any additional setup after loading the view.
    }
    
    func displayAlertWithTitle(status:String, message:String) ->String{
        return "\(status) \(message)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let destinationVC = segue.destinationViewController as! EventsTableViewController
        
        if(segue.identifier == "upcoming_events"){
            destinationVC.navigationItem.title = "Upcoming events"
            //destinationVC.
            
            
            //            let query = PFQuery(className:"Events") // Fetches all the Movie objects
            //            query.findObjectsInBackgroundWithBlock { // what happened to the ( ) ?
            //                (objects: [PFObject]?, error: NSError?) -> Void in
            //
            //                if error == nil {
            //                    // The find succeeded.
            //                    self.displayAlertWithTitle("Success!", message:"Retrieved \(objects!.count) scores.")
            //                    destinationVC.events = objects as! [Events]
            //                    // self.events = objects as! [Events]
            //                    // Do something with the found objects
            //                    self.eventsTV.reloadData()
            //                } else {
            //                    // Log details of the failure
            //                    self.displayAlertWithTitle("Oops", message: "\(error!) \(error!.userInfo)")
            //                }
            //            }
            
        }
        else if(segue.identifier == "cultural_event"){
            destinationVC.navigationItem.title = "Cultural Events"
            //destinationVC.incSegue = "Cultural"
        }
        else if(segue.identifier == "sports_event"){
            destinationVC.navigationItem.title = "Sports"
            // destinationVC.numberOfSectionsInTableView(<#T##tableView: UITableView##UITableView#>)
            
        }
        else if(segue.identifier == "party_event"){
            destinationVC.navigationItem.title = "Party"
        }
        else if(segue.identifier == "festival_event"){
            destinationVC.navigationItem.title = "Festival"
        }
    }
    
}
