//
//  EventsList.swift
//  Scintillator
//
//  Created by Deshmukh,Devyani S on 10/29/16.
//  Copyright © 2016 Deshmukh,Devyani S. All rights reserved.
//
import Parse

import Foundation


class EventsList {
   var events:[Events]!
   var eventType: [EventType]!
    //initializer
    init(){
    }
    
   
//    func populateEvents(){
        
//        events = [
//            Events(name:"Sports",
//                eventType:[
//                    EventType(name:"SportsA",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"SportsB",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"SportsC",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                ]),
//            Events(name:"Cultural",
//                eventType:[
//                    EventType(name:"CulturalA",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"CulturalB",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"CulturalC",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"CulturalD",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg")
//                ]),
//            Events(name:"Party",
//                eventType:[
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg")
//                ])
//    
//            
//            
//            Events(name:"Sankrant",
//                eventType:[
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg")
//                ]),
//            Events(name:"Padwa",
//                eventType:[
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg")
//                ]),
//            Events(name:"Dussera",
//                eventType:[
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg")
//                ]),
//            Events(name:"Easter",
//                eventType:[
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg")
//                ]),
//            Events(name:"Holi",
//                eventType:[
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg")
//                ]),
//            Events(name:"New Year",
//                eventType:[
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg")
//                ]),
//            Events(name:"Halloween",
//                eventType:[
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg"),
//                    EventType(name:"christmas",description:"We invite you for the Christams event",date:"25 Dec",imageName:"christmas.jpg")
//                ])
//                        ]
//        
//    }
//
    
    func populateSports(){
            
            eventType = [EventType(name:"Holi",description:"Cricket is fun",date:"1 Dec",imageName:"christmas.jpg"),
                        EventType(name:"Sankrant",description:"Badminton is fun",date:"2 Dec",imageName:"christmas.jpg"),
                        EventType(name:"Christmas",description:"Merry Christmas",date:"1 Dec",imageName:"christmas.jpg"),
                        EventType(name:"Dusshera",description:"Have a nice time at party",date:"1 Dec",imageName:"christmas.jpg"),
                        EventType(name:"Diwali",description:"Get Ready for Diwali Dhamaka",date:"1 Dec",imageName:"christmas.jpg"),
                        EventType(name:"Pongal",description:"ISA Welcomes you",date:"1 Dec",imageName:"christmas.jpg"),
                        EventType(name:"Janmashtami",description:"Good luck !",date:"1 Dec",imageName:"christmas.jpg"),
                        EventType(name:"Rakshabandhan",description:"Good luck !",date:"1 Dec",imageName:"christmas.jpg"),
                        EventType(name:"Eid",description:"Good luck !",date:"1 Dec",imageName:"christmas.jpg"),
                        EventType(name:"Onam",description:"Good luck !",date:"1 Dec",imageName:"christmas.jpg"),
                        EventType(name:"Ganesh Chaturthi",description:"Good luck !",date:"1 Dec",imageName:"christmas.jpg"),
                        EventType(name:"Navratri",description:"Good luck !",date:"1 Dec",imageName:"christmas.jpg"),
                        EventType(name:"Hemis",description:"Good luck !",date:"1 Dec",imageName:"christmas.jpg"),
                        EventType(name:"Onam",description:"Good luck !",date:"1 Dec",imageName:"christmas.jpg"),
                        EventType(name:"New Year",description:"Good luck !",date:"1 Dec",imageName:"christmas.jpg"),
                        EventType(name:"Vasant panchami",description:"Good luck !",date:"1 Dec",imageName:"christmas.jpg"),
                        EventType(name:"Maha shivratri",description:"Good luck !",date:"1 Dec",imageName:"christmas.jpg"),
                        
        
        ]
    
    }
    
    
    func numEvents()->Int {
        //return events.count
        return eventType.count
    }
   
    func EventNum(index:Int)->EventType {
        //return events[index]
        return eventType[index]
    }
}