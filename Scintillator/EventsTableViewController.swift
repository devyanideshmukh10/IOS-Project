//
//  EventsTableViewController.swift
//  Scintillator
//
//  Created by Deshmukh,Devyani S on 10/29/16.
//  Copyright © 2016 Deshmukh,Devyani S. All rights reserved.
//
import Parse

import UIKit

class EventsTableViewController: UITableViewController {
    
    var eventsList:EventsList!
    var events:[Events]!
    //@IBOutlet weak var eventsTV:UITableView!
    
    @IBOutlet var eventsTV: UITableView!
    func incSegue(name:String) -> String{
        return name
    }
    
    
    override func viewDidLoad() {
       // self.navigationController?.view.backgroundColor = UIColor(patternImage: UIImage(named: "surface-glass-panel1.png")!)
        //self.navigationController?.view.backgroundColor = [UIColor.redColor()];
        //self.tableView.backgroundColor = UIColor.clearColor()
        super.viewDidLoad()
        eventsList = EventsList()
        fetch()
        eventsList.populateSports()
    }
    
    func displayAlertWithTitle(status:String, message:String) ->String{
        return "\(status) \(message)"
    }
    
    
    override func viewWillAppear(animated: Bool) {
        // self.navigationItem.title = "Sports"
        
    }
    
    func fetch() {
        
        let query = Events.query()
        
//        query.whereKey("eventType", equalTo:"Sports")
        
        query!.findObjectsInBackgroundWithBlock {
            (objects: [PFObject]?, error: NSError?) -> Void in
            
            if error == nil {
                dispatch_async(dispatch_get_main_queue()) {
                    
                    print("Successfully fetched \(objects?.count) objects")
                }
            } else {
                if let error = error {
                    print("Something has gone terribly wrong! \(error.localizedDescription)")
                }
            }
        }
        print("in fetch func \(query)")
    }
    
     override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
     return 1
     }
    
//     override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//           return 4
//      }
    
 
     override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return eventsList.numEvents()
     }
    
    
     
     override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCellWithIdentifier("event_cell", forIndexPath: indexPath)
     cell.textLabel?.text = eventsList.eventType[indexPath.row].name

     return cell
     }
//    
//    func colorForIndex(index: Int) -> UIColor {
//        let itemCount = eventsList.numEvents() - 1
//        let color = (CGFloat(index) / CGFloat(itemCount)) * 0.6
//        return UIColor(red: 1.0, green: color, blue: 0.0, alpha: 1.0)
//    }
    
//    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell,
//                            forRowAtIndexPath indexPath: NSIndexPath) {
//        cell.backgroundColor = colorForIndex(indexPath.row)
//    }
    
    
    
    //    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    //        let eventsInfoVC:EventsInfoViewController = segue.destinationViewController as! EventsInfoViewController
    //        eventsInfoVC.eventType = events.paintingNum((tableView.indexPathForSelectedRow?.row)!)
    //    }
    
    //    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    //        let paintingTVC:PaintingsTableViewController = segue.destinationViewController as! PaintingsTableViewController
    //        paintingTVC.museum = culturalAttractions.museums[(tableView.indexPathForSelectedRow?.row)!]
    //        
    //    }
}
