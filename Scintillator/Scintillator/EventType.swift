//
//  EventType.swift
//  Scintillator
//
//  Created by Deshmukh,Devyani S on 10/29/16.
//  Copyright © 2016 Deshmukh,Devyani S. All rights reserved.
//
import Parse

import Foundation

class EventType {
    var name:String
    var description:String
    var date:String
    var imageName:String
    
    init(name:String, description:String!, date:String,imageName:String){
        self.name = name
        self.description = description
        self.date = date
        self.imageName = imageName
    }
}