//
//  Events.swift
//  Scintillator
//
//  Created by Deshmukh,Devyani S on 10/29/16.
//  Copyright © 2016 Deshmukh,Devyani S. All rights reserved.
//
import Foundation
import Parse


import Foundation

class Events: PFObject {
    
    @NSManaged var eventType: String
    @NSManaged var eventName:String
    @NSManaged var eventDescription:String
    @NSManaged var date:NSDate
    
    //var imageName:String
    
    init(eventType:String, eventName:String, eventDescription:String!, date:NSDate){
        super.init()
        self.eventType = eventType
        self.eventName = eventName
        self.eventDescription = eventDescription
        self.date = date
    }
    
    override class func query() -> PFQuery? {
        let query = PFQuery(className: Events.parseClassName())
        
        query.orderByDescending("createdAt")
        
        return query
    }
    
    override init() {
        super.init()
    }
    
}

extension Events : PFSubclassing {
    class func parseClassName() -> String {
        return "Events"
    }
}