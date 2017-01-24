//
//  ViewController.swift
//  Scintillator
//
//  Created by Deshmukh,Devyani S on 10/29/16.
//  Copyright © 2016 Deshmukh,Devyani S. All rights reserved.
//
import Parse

import UIKit

class EventsInfoViewController: UIViewController {

    var eventType:EventType!
    
    
    @IBOutlet weak var dateLBL: UILabel!
    @IBOutlet weak var descriptionLBL: UILabel!
    @IBOutlet weak var eventImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //overriding viewwillappear function
    override func viewWillAppear(animated: Bool) {
        //self.navigationItem.title = eventType.name
//        self.navigationItem.leftBarButtonItem?.title = "Back"
//        dateLBL.text = eventType.date
//        descriptionLBL.text = String(eventType.description)
//        eventImage.image = UIImage(named:eventType.imageName)
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

