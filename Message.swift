//
//  Message.swift
//  FishyTalk
//
//  Created by ED on 1/15/17.
//  Copyright © 2017 SwiftBeard. All rights reserved.
//

import Foundation
import CoreData

class Message: NSManagedObject {

// Insert code here to add functionality to your managed object subclass

    
    var isIncoming:Bool{
        return sender != nil
    }
}
